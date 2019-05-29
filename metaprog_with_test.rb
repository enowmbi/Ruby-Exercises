require 'minitest'


def to_alphanumeric(title)
  title.gsub(/[^\w\s]/i)
end


 def test_allows_only_alpha_numeric 
  assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
 end


 test
