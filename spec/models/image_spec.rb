require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should belong_to :user}
  it 'adds an image' do
    Image.all.each do |image|
      image.destroy
    end

    new_image = FactoryGirl.create(:image)
    expect(new_image.url).to eq("http://www.photolakedistrict.co.uk/wp-content/uploads/UK-Castle-Wedding-Photographer.jpg")
    expect(new_image.user_id).to eq (1)
  end
end
