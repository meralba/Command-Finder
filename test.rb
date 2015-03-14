require 'cmdfind.rb'
require 'test/unit'
 
class TestCmdFind < Test::Unit::TestCcase
  def test_cmd
    assert_equal "chgrp - 1 ", system("./cmdfind.rb pertenecer")

  end
 
 
end
