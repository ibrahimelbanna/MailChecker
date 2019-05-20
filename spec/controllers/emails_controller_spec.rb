require 'rails_helper'

RSpec.describe EmailsController, type: :controller do
  let(:email) { 'test@gmail.com'  } 
  describe 'GET # validate' do
    it "returns http success" do
      get :validate, params: {email: email}
      expect(response).to have_http_status(:success)
    end
  end
end