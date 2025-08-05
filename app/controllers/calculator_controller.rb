class CalculatorController < ApplicationController
  def homepage_action
    render({ :template => "calculator_templates/square" })
  end

  ##Square forms##
    # just renders the blank form
    def square_new
      render({ :template => "calculator_templates/square" })
    end

    # handles the submission
    def square_results
      @square                = params.fetch("user_number").to_f
      @number_squared_result = @square * @square

      render({ :template => "calculator_templates/square_results" })
    end
  
  ##Square root forms##
    # just renders the blank form
    def square_root_new
      render({ :template => "calculator_templates/square_root" })
    end

    # handles the submission
    def square_root_results
      @number              = params.fetch("user_number").to_f
      @square_root_value = @number ** 0.5

      render({ :template => "calculator_templates/square_root_results" })
    end
end
