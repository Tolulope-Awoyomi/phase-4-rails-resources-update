Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  # create a custom route to take the work of calculating the number of likes and incrementing it off the frontend. All the frontend would do is to send a arequenst to our new custom  route.
  patch "/birds/:id/like", to: "birds#increment_likes"
end
