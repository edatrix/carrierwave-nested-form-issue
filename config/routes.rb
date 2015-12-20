Rails.application.routes.draw do

  root "elves#index"
  get "/", :to => "elves#index"

end
