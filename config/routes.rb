# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
    path: "",
    controllers: {
      registrations: "users/registrations",
      sessions: "users/sessions"
    },
    path_names: {
      sign_in: "login",
      password: "forgot",
      confirmation: "confirm",
      sign_up: "sign_up",
      sign_out: "sign_out"
    }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  authenticated :user do
    root to: "home#index", as: :user_root
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get "dashboard/show"
end
