require 'test_helper'
require 'minitest/reporters'
MiniTest::Reporters.use!

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "content should be longer than 10" do
    mp = Micropost.new(:content => "a"*3, :user_id => 1)
    assert !mp.save
    # puts mp.errors.full_messages
    assert mp.errors.full_messages == ["Content is too short (minimum is 10 characters)"]
  end

  test "content should be shorter than 140" do
    mp = Micropost.new(:content => "a"*150, :user_id => 1)
    assert !mp.save
    # puts mp.errors.full_messages
    assert mp.errors.full_messages == ["Content is too long (maximum is 140 characters)"]
  end


end
