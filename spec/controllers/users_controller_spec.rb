require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let(:user){FactoryGirl.create(:user)}

  describe "show" do
    it "should have an show action" do
      get :show, :username=>user.username
      expect(response).to be_success
    end
  end
end
