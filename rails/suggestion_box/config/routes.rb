Rails.application.routes.draw do
  get "/topics", to: "topics#index"
  get "/topics/new", to: "topics#new"
  post "/topics", to: "topics#create"
  get "/topics/:id", to: "topics#show"
  get "/topics/:id/edit", to: "topics#edit"
  patch "/topics/:id", to: "topics#update"
  delete "/topics/:id", to: "topics#destroy"

  post "/topics/:id/vote", to: "topics#vote"
  delete "/topics/:id/downvote", to: "topics#downvote"
end
