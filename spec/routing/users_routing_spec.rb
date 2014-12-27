require 'rails_helper'

RSpec.describe UsersController, :type=>:routing do
  describe "users routing" do
    it "routings to #show" do
      expect(get("/admin")).to route_to(:controller=>"users",
                                       :action=>"show",
                                       :username=>"admin")
    end
  end
end
