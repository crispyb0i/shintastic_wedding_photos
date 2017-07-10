require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to :user}
  it { should belong_to :image}
end

RSpec.describe Comment, type: :model do
  it { should belong_to :user}
  it { should belong_to :image}
  # it 'adds a comment' do
  #   User.all.each do |user|
  #     user.destroy
  #   end
  #   Image.all.each do |image|
  #     image.destroy
  #   end
  #   Comment.all.each do |comment|
  #     comment.destroy
  #   end
  #   new_user = FactoryGirl.create(:user)
  #   new_image = FactoryGirl.create(:image)
  #   new_comment = FactoryGirl.create(:comment)
  #   expect(new_comment.content).to eq("This photo is amazing!")
  # end
end
