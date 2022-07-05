Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    get 'posts', to: 'posts#index'
  end

  get '*page', to: 'static#index', constraints: lambda { |req|
    !req.xhr? && req.format.html?
  }

  root 'static#index'
end
