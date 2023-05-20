Identity::Engine.routes.draw do
  devise_for :users, class_name: "Identity::User"
end
