string = 'foobar'
def string.exclaim
 self + '!'
 end

 puts string.exclaim
 puts string.singleton_methods
 puts 'foobar'.exclaim