Spree::Core::Engine.routes.draw do
  Spree::Core::Engine.routes.append do
    namespace :admin do
      resource :google_adwords_settings
    end
  end
end