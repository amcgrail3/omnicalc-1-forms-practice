class CalculatorController < ApplicationController
  def homepage_action
    render({ :template => "calculator_templates/homepage" })
  end
end
