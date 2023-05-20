module Identity
  class Engine < ::Rails::Engine
    isolate_namespace Identity

    config.to_prepare do
      Devise::SessionsController.layout 'identity/application'
      Devise::RegistrationsController.layout 'identity/application'
      Devise::ConfirmationsController.layout 'identity/application'
      Devise::UnlocksController.layout 'identity/application'
      Devise::PasswordsController.layout 'identity/application'
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end
  end
end
