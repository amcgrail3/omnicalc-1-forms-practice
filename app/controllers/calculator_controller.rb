class CalculatorController < ApplicationController
  def homepage_action
    render({ :template => "calculator_templates/homepage" })
  end

  def square
    @square = params.fetch("square").to_f

    @number_squared_result = @square * @square

    render({ :template => "calculator_templates/square" })
  end
end
