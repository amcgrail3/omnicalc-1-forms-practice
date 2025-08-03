class CalculatorController < ApplicationController
  def homepage_action
    render({ :template => "calculator_templates/homepage" })
  end

  def square/new
    @square = params.fetch("square/new").to_f

    @number_squared_result = @square * @square

    render({ :template => "calculator_templates/square/new" })
  end
end
