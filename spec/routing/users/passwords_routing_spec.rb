require 'rails_helper'

RSpec.describe Users::PasswordsController, :type=>:routing do
  it "routes to #new" do
    expect(:get=>"/user/password/new").to route_to(:controller=>"users/passwords",
                                           :action=>"new")

  end

  it "routes to #edit" do
    expect(:get=>"/user/password/edit").to route_to(:controller=>"users/passwords",
                                           :action=>"edit")

  end
  it "routes to #create" do
    expect(:post=>"/user/password").to route_to(:controller=>"users/passwords",
                                           :action=>"create")

  end
  it "routes to #update" do
    expect(:patch=>"/user/password").to route_to(:controller=>"users/passwords",
                                           :action=>"update")

  end
end
