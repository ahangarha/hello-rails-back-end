# frozen_string_literal: true

Rails.application.routes.draw do
  get 'random_greeting', to: 'random_greeting#index'
end
