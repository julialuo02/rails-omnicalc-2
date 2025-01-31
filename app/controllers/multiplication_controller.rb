class MultiplicationController < ApplicationController
  def multiplication_form
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply_result
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f

    @result = @first_num * @second_num

    render({ :template => "multiplication_templates/multiply_result" })
  end
end
