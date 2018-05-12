Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  mount GraphiQL::Rails::Engine, at: :___graphql, graphql_path: :graphql if Rails.env.development?

  resources :posts do
    resources :comments
  end
end
