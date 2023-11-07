Rails.application.routes.draw do
  
  get("/", {:controller => "calc", :action => "show_initial_page"})

  get("/square/new", {:controller => "calc", :action => "show_initial_page"})

  get("/square/results", {:controller => "calc", :action => "calc_square"})

  

end
