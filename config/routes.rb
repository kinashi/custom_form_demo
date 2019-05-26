# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams, only: %i[show] do
    resources :custom_forms, only: %i[edit update]
  end
end
