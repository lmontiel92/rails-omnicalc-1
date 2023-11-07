Rails.application.routes.draw do
  
  get("/", {:controller => "calc", :action => "show_initial_page"})

  get("/square/new", {:controller => "calc", :action => "show_initial_page"})

  get("/square/results", {:controller => "calc", :action => "calc_square"})

  get("/square_root/new", {:controller => "calc", :action => "square_root_new"})

  get("/square_root/results", {:controller => "calc", :action => "calc_square_root"})

  get("/payment/new", {:controller => "calc", :action => "payment_new"})

  get("/payment/results", {:controller => "calc", :action => "calc_payment"})

  get("/random/new", {:controller => "calc", :action => "random_new"})

  get("/random/results", {:controller => "calc", :action => "calc_random"})
end
