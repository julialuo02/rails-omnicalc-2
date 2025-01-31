class DivisionController < ApplicationController
  def division_form
    render template: "div_templates/division_form"
  end

  def divide_results
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f

    if @num2.zero?
      @result = "Division by zero is not allowed"
    else
      @result = @num1 / @num2
    end

    render template: "div_templates/divide_results"
  end
end
