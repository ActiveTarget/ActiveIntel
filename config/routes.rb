Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActiveStix::Engine, at: "/stix", as: :stix
  mount ActiveAttack::Engine, at: "/attack"

end
