class SubtractionController < ApplicationController
  def subtraction_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def sub_results
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f
  
    @result = @first_num - @second_num

    render({ :template => "subtraction_templates/subtraction_results" })
  end
end
