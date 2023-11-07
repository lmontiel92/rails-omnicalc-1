class CalcController < ApplicationController
  
  def show_initial_page
    
    render ({:template => "view_templates/square_new"})

  end


  def calc_square
    
    @user_square_input = params.fetch("user_number").to_f
    @user_square_result = @user_square_input**2

    render ({:template => "view_templates/square_results"})

  end

end
