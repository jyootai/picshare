require 'rails_helper'

RSpec.describe Users::SessionsController, :type=>:routing do
  it "routes to #new" do
    expect(:get=>"/user/login").to route_to(:controller=>"users/sessions",
                                           :action=>"new")

  end

  it "routes to #destroy" do
    expect(:get=>"/user/logout").to route_to(:controller=>"users/sessions",
                                           :action=>"destroy")

  end
  it "routes to #create" do
    expect(:post=>"/user/login").to route_to(:controller=>"users/sessions",
                                           :action=>"create")

  end
end
