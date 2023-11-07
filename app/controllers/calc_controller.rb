class CalcController < ApplicationController
  
  def show_initial_page
    
    render ({:template => "view_templates/square_new"})

  end

end
