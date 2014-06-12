class Spree::Admin::GoogleAdwordsSettingsController < Spree::Admin::BaseController
  helper 'spree/admin/google_adwords'
  
  def update
    params.each do |name, value|
      next unless Spree::GoogleAdwords::Config.has_preference? name
      Spree::GoogleAdwords::Config[name] = value
    end
    
    respond_to do |format|
      format.html {
        redirect_to admin_google_adwords_settings_path
      }
    end
  end

end
