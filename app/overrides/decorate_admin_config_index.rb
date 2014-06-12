Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "google_adwords_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => "<%= configurations_sidebar_menu_item Spree.t(:google_adwords), admin_google_adwords_settings_path %>",
                     :original => '23ad30226677665e68306140013d2ec2ffc6d6e7',
                     :disabled => false)