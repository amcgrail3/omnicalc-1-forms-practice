Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "homepage_action" })
end
