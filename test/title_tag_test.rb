require 'test_helper'

class TitleTagTest < ActiveSupport::TestCase
  test "TitleTag is a Module" do
    assert_kind_of Module, TitleTag
  end  

  test "TitleTagHelper is a Module" do
    assert_kind_of Module, TitleTag::TitleTagHelper
  end
end
