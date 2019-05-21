Rails.application.routes.draw do
 resources :solvers

 root 'solvers#index'
end
