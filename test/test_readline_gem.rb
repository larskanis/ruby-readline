# frozen_string_literal: false
require "readline"

class TestReadlineGem < Test::Unit::TestCase
  def test_gem_extension_loaded
    assert_operator($LOADED_FEATURES, :grep, /ruby-readline\/lib\/readline.so/)
  end
end
