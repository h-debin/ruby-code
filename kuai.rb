#!/usr/bin/ruby

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}
def test1
   yield 5
   puts "You are in the method test"
   yield 100
end
test1 {|i| puts "You are in the block #{i}"}
def test2
  yield
end
test2{ puts "Hello world"}
def test3(&block)
   block.call
end
test3 { puts "Hello World!"}
BEGIN { 
  # BEGIN block code 
  puts "BEGIN code block"
} 

END { 
  # END block code 
  puts "END code block"
}
  # MAIN block code 
puts "MAIN code block"

