require 'rails_helper'

RSpec.describe WelcomesController, :type => :controller do
  describe "/" do
    it "should have a index page" do
      get :index
      expect(response).to be_success
    end
  end

end
