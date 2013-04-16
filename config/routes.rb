Lucre::Application.routes.draw do
  match '/' => 'charges#new', via: :get
  match '/thanks' => 'charges#create', via: :post
  match '/error' => 'charges#error', via: :get
end
