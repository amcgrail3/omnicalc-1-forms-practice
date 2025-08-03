Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "homepage_action" })
  get("/square",        { :controller => "calculator", :action => "square" })
  get("/square/new",        { :controller => "calculator", :action => "homepage_action" })
end
