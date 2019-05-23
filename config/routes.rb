Rails.application.routes.draw do
 resource :solver

 root 'solvers#new'
end
