def call_my_block(*attr, &block)
    attr.each do |var|
    yield var if block_given?
  end
end

blk = Proc.new{|x| puts x}
  
p call_my_block(1,2,3,4,5,blk)