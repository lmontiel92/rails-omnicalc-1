Rails.application.routes.draw do
  
  get("/", {:controller => "calc", :action => "show_initial_page"})

  get("/square/new", {:controller => "calc", :action => "show_initial_page"})

  get("/square/results", {:controller => "calc", :action => "calc_square"})

  get("/square_root/new", {:controller => "calc", :action => "square_root_new"})

  get("/square_root/results", {:controller => "calc", :action => "calc_square_root"})

end
