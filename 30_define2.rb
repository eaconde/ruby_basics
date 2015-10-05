class Array
  def self.send_new_method(name, &block)
    Array.send(:define_method, name) do |*args|
      block.call(self, *args)
    end
  end
end

Array.send_new_method('foobar') do |this, x|
  this.each { |e| puts "#{x} #{e}" }
end

%w(cat dog bird).foobar("Animal: ")
