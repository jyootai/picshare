require 'rails_helper'

RSpec.describe Photo, :type => :model do
  it "should have correct next and prev" do
    photo1 = Photo.create!(id: 1)
    photo2 = Photo.create!(id: 3)
    photo3 = Photo.create!(id: 5)
    expect(photo2.next).to eq(photo3)
    expect(photo2.prev).to eq(photo1)
  end
end
