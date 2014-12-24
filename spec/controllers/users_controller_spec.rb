require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let(:user){FactoryGirl.create(:user)}

  describe "show" do
    it "should have a show action" do
      get :show, :username=>user.username
      expect(response).to be_success
    end
  end

  describe "rencet" do
    it "should have a recent action" do
      get :recent, :username=>user.username
      expect(response).to be_success
    end
  end

  describe "authenticated" do

    before(:each){sign_in user}

    describe ":password" do
      it "should have a password action" do
        get :password
        expect(response).to be_success
      end
    end
    describe ":profile" do
      it "should have a password action" do
        get :profile
        expect(response).to be_success
      end
    end
    describe ":social" do
      it "should have a password action" do
        get :social
        expect(response).to be_success
      end
    end
    describe ":edit" do
      it "should have a password action" do
        get :edit
        expect(response).to be_success
      end
    end
  end
end
