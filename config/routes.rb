Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :exercise
  resources :exercise_assignments
  resources :exercise_schedule
  resources :assignment_schedule
end
