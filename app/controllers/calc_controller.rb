class CalcController < ApplicationController
  
  def show_initial_page
    
    render ({:template => "view_templates/square_new"})

  end


  def calc_square
    
    @user_square_input = params.fetch("user_number").to_f
    @user_square_result = @user_square_input**2

    render ({:template => "view_templates/square_results"})

  end

  def square_root_new
    
    render ({:template => "view_templates/square_root_new"})

  end

  def calc_square_root
    
    @user_square_root_input = params.fetch("user_number").to_f
    @user_square_root_result = Math.sqrt(@user_square_root_input)

    render ({:template => "view_templates/square_root_results"})

  end

end
