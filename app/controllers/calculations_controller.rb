class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params["id"].to_i

    @square = @number*@number
  end

  def square_root
    @number = params["id"].to_i
    @square_root = Math.sqrt(@number)

  end

  def random
    @min = params["min"].to_i
    @max = params["max"].to_i
    @random = rand(@min...@max)

  end
  def payment
    @apr = params["rate"].to_f
    @years = params["years"].to_i
    @principal = params["principal"].to_f

    @apr_calc = (@apr/120000).to_f

    @term_months = (@years*12)

    @monthly_payment = ((@apr_calc*@principal)*((1+@apr_calc)**@term_months))/(((1+@apr_calc)**@term_months)-1)
    

  end
end
