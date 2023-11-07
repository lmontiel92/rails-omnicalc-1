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

  def payment_new
    
    render ({:template => "view_templates/payment_new"})

  end

  def calc_payment
    
    @user_APR_input = params.fetch("user_APR").to_f/100
    @user_APR_input = @user_APR_input.round(4)
    @user_Years_input = params.fetch("user_Years").to_f
    @user_Principal_input = params.fetch("user_Principal").to_f

    pmt_num = (@user_APR_input/12)*@user_Principal_input
    pmt_denom = 1-((1+@user_APR_input/12)**-(@user_Years_input*12))

    @user_payment_result = pmt_num/pmt_denom

    @user_APR_input = @user_APR_input*100

    render ({:template => "view_templates/payment_results"})

  end

  def random_new
    
    render ({:template => "view_templates/random_new"})

  end

  def calc_random

    @user_random_max_input = params.fetch("user_max_number").to_f
    @user_random_min_input = params.fetch("user_min_number").to_f
    @user_random_result = rand(@user_random_min_input..@user_random_max_input)

    render ({:template => "view_templates/random_results"})

  end

end
