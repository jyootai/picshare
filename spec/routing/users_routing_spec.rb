require 'rails_helper'

RSpec.describe UsersController, :type=>:routing do
  describe "users routing" do
    it "routes to #show" do
      expect(:get=>"/test").to route_to(:controller=>"users",
                                       :action=>"show",
                                       :username=>"test")
    end

    it "routes to #recent" do
      expect(:get=>"test/recent").to route_to(:controller=>"users",
                                             :action=>"recent",
                                             :username=>"test")
    end

    it "routes to #edit" do
      expect(:get=>"settings/edit").to route_to(:controller=>"users",
                                             :action=>"edit")
    end

    it "routes to #email" do
      expect(:get=>"settings/email").to route_to(:controller=>"users",
                                             :action=>"email")
    end

    it "routes to #password" do
      expect(:get=>"settings/password").to route_to(:controller=>"users",
                                             :action=>"password")
    end
    it "routes to #profile" do
      expect(:get=>"settings/profile").to route_to(:controller=>"users",
                                             :action=>"profile")
    end
    it "routes to #social" do
      expect(:get=>"settings/social").to route_to(:controller=>"users",
                                             :action=>"social")
    end

  end
end
