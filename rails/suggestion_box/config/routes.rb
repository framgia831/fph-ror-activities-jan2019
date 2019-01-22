Rails.application.routes.draw do
  get "/topics", to: "topics#index"
end
