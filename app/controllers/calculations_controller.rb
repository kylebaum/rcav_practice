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


  end
  def payment
    @interest_rate = params["rate"]
    @number_of_years = params["years"].to_i
    @principal_value = params["principal"].to_i

  end
end
