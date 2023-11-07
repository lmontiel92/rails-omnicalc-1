Rails.application.routes.draw do
  
  get("/", {:controller => "calc", :action => "show_initial_page"})

  

end
