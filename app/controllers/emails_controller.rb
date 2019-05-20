class EmailsController < ApplicationController
  def validate
  @response = EmailValidator.new(params[:email]).execute
  end
end
