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
    
    ##Payment forms##
      # just renders the blank form
      def payment_new
        render({ :template => "calculator_templates/payment" })
      end

    # handles the submission
      def payment_results
        # 1. Handling APR (Annual Percentage Rate):
        apr = params.fetch("user_apr_input").to_f
        @apr = apr.to_fs(:percentage, {:precision => 4})

        apr_rate = apr / 100
        r = apr_rate /12

        #2. Managing the Loan Term (“n” in the Formula):
        @years = params.fetch("user_years_input").to_i
        payment_period = @years * 12

        #3. Variable Organization:
        pv = params.fetch("user_principal_input").to_f
        @pv = pv.to_fs(:currency)

        numerator = r * pv
        denominator_incomplete = (1+r) ** (-1 * payment_period)
        denominator = 1- denominator_incomplete
        
        payment = numerator / denominator
        @payment = payment.to_fs(:currency)

        render({ :template => "calculator_templates/payment_results" })
      end
end
