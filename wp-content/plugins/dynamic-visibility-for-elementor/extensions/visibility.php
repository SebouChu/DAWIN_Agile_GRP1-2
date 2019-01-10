<?php

namespace DynamicContentForElementor\Extensions;

use DynamicContentForElementor\Extensions\Extension_Prototype;
use Elementor\Controls_Manager;

if (!defined('ABSPATH'))
    exit; // Exit if accessed directly

/**
 * Parallax extenstion
 *
 * Adds parallax on widgets and columns
 *
 * @since 0.5.5
 */

class Extension_Visibility extends Extension_Prototype {

    /**
     * Is Common Extension
     *
     * Defines if the current extension is common for all element types or not
     *
     * @since 0.5.4
     * @access private
     *
     * @var bool
     */
    protected $is_common = true;
    /*protected $is_visibility = false;
    public $widget = null;*/
    
    /**
     * The description of the current extension
     *
     * @since 0.5.4
     * */
    public static function get_description() {
        return __('Visibility rules for Widgets and Rows');
    }

    /**
     * Add common sections
     *
     * @since 0.5.4
     *
     * @access protected
     */
    protected function add_common_sections_actions() {

        // Activate sections for widgets
        add_action('elementor/element/common/_section_style/after_section_end', function( $element, $args ) {
            $this->add_common_sections($element, $args);
        }, 10, 2);

        // Activate sections for columns
        /* 
        add_action('elementor/element/column/section_advanced/after_section_end', function( $element, $args ) {
            $this->add_common_sections($element, $args);
        }, 10, 2);
        */
        
        // Activate sections for sections
        /* 
        add_action( 'elementor/element/section/section_advanced/after_section_end', function( $element, $args ) {
          $this->add_common_sections( $element, $args );
          }, 10, 2 ); 
        */
    }

    /**
     * Add Actions
     *
     * @since 0.5.5
     *
     * @access private
     */
    private function add_controls($element, $args) {

        $element_type = $element->get_type();

        if (!defined('EDV__FILE__')) {
            $element->add_control(
                    'visibility_hr', [
                'type' => \Elementor\Controls_Manager::DIVIDER,
                'style' => 'thick',
                    ]
            );
        }

        $element->add_control(
                'enabled_visibility', [
            'label' => __('Enabled Visibility', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::SWITCHER,
            'default' => '',
            'label_on' => __('Yes', DCE_TEXTDOMAIN),
            'label_off' => __('No', DCE_TEXTDOMAIN),
            'return_value' => 'yes',
            'frontend_available' => true,
            'render_type' => 'template'
                ]
        );
        
        /*$element->add_control(
          'html_visibility',
          [
             'type'    => Controls_Manager::RAW_HTML,
             'raw' => __( '<div style="background-color: #e52600; color: white; text-align: center; padding: 10px; border-radius: 50px;"><i class="fa fa-eye-slash"></i> This element is hidden</div>', DCE_TEXTDOMAIN ),
             'content_classes' => 'visibility-element',
             'condition' => [
                    'enabled_visibility' => 'yes',
                    'dce_visibility_hidden' => 'yes',
                    'dce_visibility_everyone' => ''
                ],
            'render_type' => 'template'
          ]
        );*/
        
        $element->add_control(
                'visibility_heading', [
            'label' => __('Visibility', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::HEADING,
            'condition' => [
                'enabled_visibility' => 'yes',
            ],
                ]
        );
        
        $element->add_control(
                'dce_visibility_hidden', [
            'label' => __('Show/Hide this block', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::SWITCHER,
            'default' => '',
            'label_on' => __('Hidden', DCE_TEXTDOMAIN),
            'label_off' => __('Show', DCE_TEXTDOMAIN),
            'return_value' => 'yes',
            'description' => __('This make disappear the widget in frontend until is enabled', DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_everyone' => 'yes'
            ],
            'render_type' => 'template'
                ]
        );
        $element->add_control(
                'vis_hr', [
            'type' => \Elementor\Controls_Manager::DIVIDER,
            'style' => 'thick',
                ]
        );
        $element->add_control(
                'role_visibility_heading', [
            'label' => __('Users & Roles', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::HEADING,
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
            ],
                ]
        );
        $element->add_control(
                'dce_visibility_everyone', [
            'label' => __('Visible by Everyone', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::SWITCHER,
            'default' => 'yes',
            'label_on' => __('Yes', DCE_TEXTDOMAIN),
            'label_off' => __('No', DCE_TEXTDOMAIN),
            'return_value' => 'yes',
            'description' => __('If enabled every user, also visitors, can view the widget', DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
            ],
            'render_type' => 'template'
                ]
        );

        $roles = \DynamicContentForElementor\DynamicContentForElementor_Helper::getRoles(false);
        $roles = array_reverse($roles, true);
        $roles['users'] = 'Selected User';
        $roles['visitor'] = 'Visitor (non logged User)';
        $roles = array_reverse($roles, true);

        $element->add_control(
                'dce_visibility_role', [
            'label' => __('Visible by', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::SELECT2,
            'options' => $roles,
            'default' => 'everyone',
            'description' => __('If you want limit visualization to specific user roles', DCE_TEXTDOMAIN),
            'multiple' => true,
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
                'dce_visibility_everyone' => '',
            ],
            'render_type' => 'template'
                ]
        );
        $element->add_control(
                'dce_visibility_users', [
            'label' => __('Selected Users', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::TEXT,
            'default' => '1',
            'description' => __('Write here the list of user who will be able to view this element.<br>You can use their ID, email or username.<br>Simply separate them by a comma. (ex. "23, info@dynamic.ooo, dynamicooo")', DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_role' => 'users',
                'dce_visibility_everyone' => '',
                'dce_visibility_hidden' => '',
            ],
            'render_type' => 'template'
                ]
        );

        $element->add_control(
                'date_hr', [
            'type' => \Elementor\Controls_Manager::DIVIDER,
            'style' => 'thick',
                ]
        );
        $element->add_control(
                'date_visibility_heading', [
            'label' => __('Date', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::HEADING,
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
            ],
                ]
        );
        $element->add_control(
                'dce_visibility_date_from', [
            'label' => __('Visibile from', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::DATE_TIME,
            'description' => __('If setted the widget will appear after this date', DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
            ],
            'render_type' => 'template'
                ]
        );
        $element->add_control(
                'dce_visibility_date_to', [
            'label' => __('Visibile to', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::DATE_TIME,
            'description' => __('If setted the widget will be visible until this date', DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
                'dce_visibility_hidden' => '',
            ],
            'render_type' => 'template'
                ]
        );
        $element->add_control(
                'text_fallback_hr', [
            'type' => \Elementor\Controls_Manager::DIVIDER,
            'style' => 'thick',
                ]
        );
        $element->add_control(
                'dce_visibility_fallback', [
            'label' => __('Enable a Fallback Text', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::SWITCHER,
            'default' => '',
            'label_on' => __('Yes', DCE_TEXTDOMAIN),
            'label_off' => __('No', DCE_TEXTDOMAIN),
            'return_value' => 'yes',
            'description' => __("If you want show something when the element is hidden enable it", DCE_TEXTDOMAIN),
            'condition' => [
                'enabled_visibility' => 'yes',
            ],

                ]
        );
        $element->add_control(
                'dce_visibility_text_fallback', [
            'label' => __('Text Fallback', DCE_TEXTDOMAIN),
            'type' => Controls_Manager::WYSIWYG,
            'default' => "This element is currently hidden.",
            'description' => __("Insert here some content showed if the widget is not visible", DCE_TEXTDOMAIN),
            'condition' => [
                'dce_visibility_fallback' => 'yes',
            ],
                ]
        );


        // se volessi filtrare i campi in base al tipo
        /* if ( $element->get_name() === 'section' ) {

          } */
    }

    /**
     * Add Actions
     *
     * @since 0.5.5
     *
     * @access private
     */
    protected function add_actions() {

        // Activate controls for widgets
        add_action('elementor/element/common/section_DynamicContentForElementor_advanced/before_section_end', function( $element, $args ) {
            $this->add_controls($element, $args);
        }, 10, 2);

        add_filter( 'elementor/widget/print_template', array( $this, 'visibility_print_template' ), 10, 2 );


        add_filter('elementor/widget/render_content', array( $this, 'visibility_render_template' ), 10, 2);


        // Activate controls for columns
        /* add_action( 'elementor/element/column/section_DynamicContentForElementor_advanced/before_section_end', function( $element, $args ) {

          $this->add_controls( $element, $args );

          }, 10, 2 ); */

        // Activate controls for sections
        /* add_action( 'elementor/element/section/section_DynamicContentForElementor_advanced/before_section_end', function( $element, $args ) {

          $this->add_controls( $element, $args );

          }, 10, 2 ); */
    }
    public function visibility_print_template( $content, $widget ) {
        
       //var_dump($widget->get_settings_for_display('enabled_visibility'));
        /*if ($widget->get_settings_for_display('enabled_visibility')) {
            if($content) return '';
        }else{
            if($content) return $content;
        }*/
        //$el_name = $widget->get_name(); //$widget->get_controls_settings();
        //$el_type = $widget->get_type();
        //var_dump($widget); //die();
        //echo 'frafish'; $asd = $this->get_active_settings( $this->get_parsed_dynamic_settings(), $this->get_controls() ); var_dump($asd); die();


        // VEDI: includes/base/controls-stack riga 1679
        /*if ($this->is_visibility) {
            return $notice.'<div class="dce-visibility-hidden">' . $content . '</div>';
        }*/
        //$settings = $widget->get_settings_for_display(); // NOT WORKING - Elementor BUG??
        //$settings = $widget->settings;
        //$widget->get_id();
        /*$is_hidden = $this->is_hidden($this->widget);
        if ($this->widget) {
            if ($is_hidden) {
                return '';
            }
        }*/
        if (!$content) return '';
        
        $notice = '<div class="dce-visibility-warning"><i class="fa fa-eye-slash"></i> Hidden</div>'; // nascondo il widget
        $content = "<# if ( '' !== settings.enabled_visibility ) { if ( '' !== settings.dce_visibility_hidden ) { #>".$notice."<# } #><div class=\"dce-visibility-hidden-outline\">".$content."</div><# } else { #>".$content."<# } #>";
        return $content;
    }
    public function visibility_render_template( $content, $widget ) {
            //$this->widget = $widget;
            
            $settings = $widget->get_settings();
            //return var_export($settings, true);

            /*
              if ( 'heading' === $widget->get_name() ) {
              if ( ! empty( $settings['link']['is_external'] ) ) {
              $content .= '<i class="fa fa-external-link" aria-hidden="true"></i>';
              }
              }
             */

            if ($settings['enabled_visibility']) {
                $hidden = $this->is_hidden($widget);

                // nascondo il widget solo in FRONTEND
                if (\Elementor\Plugin::$instance->editor->is_edit_mode()) {
                    $notice = '';
                    if ($hidden) {
                        $notice = '<div class="dce-visibility-warning"><i class="fa fa-eye-slash"></i> Hidden</div>'; // nascondo il widget
                        return $notice . '<div class="dce-visibility-hidden dce-visibility-hidden-outline">' . $content . '</div>'; // mostro il widget
                    }
                    return '<div class="dce-visibility-hidden-outline">'.$content.'</div>';
                }

                if ($hidden) {
                    //var_dump($widget->get_render_attributes());
                    /*if (!\Elementor\Plugin::$instance->editor->is_edit_mode()) {
                        //return var_export($widget,true);
                        $widget->add_render_attribute(
                                '_wrapper', 'class', [
                            'elementor-element-hidden'
                                ]
                        );
                        //var_dump($widget->_render_attributes);
                    }*/
                    if ($settings['dce_visibility_fallback']) {
                        return $settings['dce_visibility_text_fallback']; // mostro il testo di fallback
                    }
                    return '<style>' . $widget->get_unique_selector() . '{display:none !important;}</style>'; // nascondo il widget
                }
            }
            return $content; // mostro il widget
        }
        
        
        public function is_hidden($widget) {
            $hidden = FALSE;
            $settings = $widget->get_settings();
            if ($settings['enabled_visibility']) {
                if ($settings['dce_visibility_date_from']) {
                    $dateFrom = strtotime($settings['dce_visibility_date_from']);
                    if (time() < $dateFrom) {
                        $hidden = TRUE;
                    }
                }
                if ($settings['dce_visibility_date_to']) {
                    $dateTo = strtotime($settings['dce_visibility_date_to']);
                    if (time() > $dateTo) {
                        $hidden = TRUE;
                    }
                }

                // forzo nascondo il widget
                if ($settings['dce_visibility_hidden'] && $settings['dce_visibility_hidden'] == 'yes') {
                    $hidden = TRUE;
                }

                if (!$settings['dce_visibility_everyone']) {
                    if (\Elementor\Plugin::$instance->editor->is_edit_mode()) {
                        $hidden = TRUE;
                    }
                    $everyhidden = FALSE;
                    $current_user = wp_get_current_user();
                    //return var_export($current_user, true);
                    $current_user_id = $current_user->ID;
                    if ($current_user && $current_user_id) {
                        //return $settings['dce_visibility_role'].' -- '.var_export($current_user->roles, true);
                        $user_roles = $current_user->roles; // possibile avere più ruoli
                        if (!is_array($user_roles)) {
                            $user_roles = array($user_roles);
                        }
                        if (is_array($settings['dce_visibility_role']) && !empty($settings['dce_visibility_role'])) {
                            if (empty(array_intersect($user_roles, $settings['dce_visibility_role']))) {
                                $everyhidden = TRUE;
                            }
                        }
                    } else {
                        if (isset($settings['dce_visibility_role']) && !in_array('visitor', $settings['dce_visibility_role'])) {
                            $everyhidden = TRUE;
                        }
                    }

                    //var_dump($settings['dce_visibility_role']); die();
                    if (isset($settings['dce_visibility_role']) 
                            && is_array($settings['dce_visibility_role']) 
                            && in_array('users', $settings['dce_visibility_role']) 
                            && $current_user_id ) {
                        $users = explode(',', $settings['dce_visibility_users']);
                        $users = array_map('trim', $users);
                        $users = array_filter($users);
                        if (!empty($users)) {
                            foreach ($users as $key => $value) {
                                //var_dump($value); die();
                                if (is_numeric($value)) {
                                    if ($value == $current_user_id) {
                                        $everyhidden = FALSE;
                                    }
                                }
                                if (filter_var($value, FILTER_VALIDATE_EMAIL)) {
                                    if ($value == $current_user->user_email) {
                                        $everyhidden = FALSE;
                                    }
                                }
                                if ($value == $current_user->username) {
                                    $everyhidden = FALSE;
                                }
                            }
                        }
                    }

                    if ($everyhidden) {
                        $hidden = TRUE;
                    }
                }
            }
            //$this->is_visibility = $hidden;
            return $hidden;
        }

}