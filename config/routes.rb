Rails.application.routes.draw do
  get "/employees", to: 'employees#index'
  post"/employees", to: 'employees#create'
  get "/employees/:id", to:'employees#show'
  patch "/employees/:id", to:'employees#update'
  delete "/employees/:id", to:'employees#destroy'

namespace :api do
  namespace :v1 do
    get "/employees", to: 'employees#index'
    post"/employees", to: 'employees#create'
    get "/employees/:id", to:'employees#show'
    patch "/employees/:id", to:'employees#update'
    delete "/employees/:id", to:'employees#destroy'
  end
end

end
