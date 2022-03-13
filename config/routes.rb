# frozen_string_literal: true

Rails.application.routes.draw do
  resources :match_histories, only: :index
  get 'match_histories/show_raw_file'
  root 'match_histories#index'
end
