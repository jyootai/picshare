require 'rails_helper'

RSpec.describe WelcomesController, :type=>:routing do
  describe "welcomes routing" do
    it "routes to /" do
      expect(:get=>"/").to route_to(:controller=>"welcomes",
                                   :action=>"index")
    end
  end
end
