Rails.application.routes.draw do
  root "home#index"

  post "/crawl" => "home#crawl"
end
