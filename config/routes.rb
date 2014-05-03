Rails.application.routes.draw do
  resources :faculties

  get 'profile/index'

  get 'security/index'

  post 'security/login'

  get 'security/logout'

  get 'welcome/index'
  
  resources :levels

  resources :scores

  resources :score_types

  resources :student_attendances

  resources :states

  resources :salaries

  resources :teacher_attendances

  resources :rooms

  resources :schedules

  resources :packages

  resources :matriculation_courses

  resources :matriculation_exams

  resources :final_certifications

  resources :final_grades

  resources :payments

  resources :matriculations

  resources :course_types

  resources :languages

  resources :administrators

  resources :secretaries

  resources :accountants

  resources :administratives

  resources :teachers

  resources :grades

  resources :unica_students

  resources :references

  resources :students

  resources :people

  resources :users

  resources :permissions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
