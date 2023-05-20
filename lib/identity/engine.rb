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

    engine_factories_path = root.join('spec', 'factories')

    ActiveSupport.on_load(:factory_bot) do
      FactoryBot.definition_file_paths.unshift engine_factories_path
    end
  end
end
