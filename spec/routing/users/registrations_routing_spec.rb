require 'rails_helper'

RSpec.describe Users::RegistrationsController, :type=>:routing do
  it "routes to #new" do
    expect(:get=>"/user/signup").to route_to(:controller=>"users/registrations",
                                           :action=>"new")
  end
  it "routes to #edit" do
    expect(:get=>"/user/edit").to route_to(:controller=>"users/registrations",
                                           :action=>"edit")
  end
  it "routes to #update" do
    expect(:patch=>"/user").to route_to(:controller=>"users/registrations",
                                           :action=>"update")
  end
  it "routes to #create" do
    expect(:post=>"/user").to route_to(:controller=>"users/registrations",
                                           :action=>"create")
  end
  it "routes to #destroy" do
    expect(:delete=>"/user").to route_to(:controller=>"users/registrations",
                                           :action=>"destroy")
  end
end
