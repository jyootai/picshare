require 'rails_helper'

RSpec.describe PhotosController, :type => :controller do
  let(:photo){FactoryGirl.create(:photo,:user=>user)}
  let(:user){FactoryGirl.create(:user)}

  describe "new" do
    describe "unauthenticated" do
      it "should not allow anonymous access" do
        get :new 
        expect(response).not_to be_success
      end
    end
    describe "authenticated" do
      it "should allow access from authenticated user" do
        sign_in user
        get :new 
        expect(response).to be_success
      end
    end
  end

  describe "edit" do
    describe "unauthenticated" do
      it "should not allow access from unauthenticated user" do
        get :edit ,:id=>photo.id
        expect(response).not_to be_success
      end
    end
    describe "authenticated" do
      context "own photo" do
        it "allow edit own photo" do
          sign_in user
          get :edit ,:id=>photo.id
          expect(response).to be_success
        end
      end
      context "other's photo" do
        it "should not allow edit other's photo" do
          other_user = FactoryGirl.create(:user)
          photo_of_other_user = FactoryGirl.create(:photo,:user=>other_user)
          sign_in user
          get :edit ,:id=>photo_of_other_user.id
          expect(response).not_to be_success
        end
      end
    end
  end

end
