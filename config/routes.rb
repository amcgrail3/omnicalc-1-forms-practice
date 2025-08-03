Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "homepage_action" })
  get("/square/new",        { :controller => "calculator", :action => "homepage_action" })
end
