require 'rails_helper'

RSpec.describe PhotosController, :type=>:routing do
  describe "users routing" do
    it "routes to #index" do
      expect(:get=>"/photos").to route_to(:controller=>"photos",
                                       :action=>"index")
    end

    it "routes to #new" do
      expect(:get=>"photos/upload").to route_to(:controller=>"photos",
                                             :action=>"new")
    end
    it "routes to #edit" do
      expect(:get=>"photos/1/edit").to route_to(:controller=>"photos",
                                             :action=>"edit",
                                               :id=>"1")
    end
    it "routes to #show" do
      expect(:get=>"photos/1").to route_to(:controller=>"photos",
                                             :action=>"show",
                                              :id=>"1")
    end
  end
end
