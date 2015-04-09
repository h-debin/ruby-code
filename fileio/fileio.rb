#!/usr/bin/ruby

val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2
puts "Enter a value :"
val = gets
puts val
str="Hello Ruby!"
putc str

print "Hello World"
print "Good Morning"


aFile = File.new("input.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"
end

aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end


aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.rewind
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end

arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

IO.foreach("input.txt"){|block| puts block}


# 重命名文件 test1.txt 为 test2.txt
File.rename( "test1.txt", "test2.txt" )


File.delete("text2.txt")

file = File.new( "test.txt", "w" )
file.chmod( 0755 )

File.open("file.rb") if File::exists?( "file.rb" )


# 返回 true 或false
File.file?( "text.txt" ) 


# 一个目录
File::directory?( "/usr/local/bin" ) # => true

# 一个文件
File::directory?( "file.rb" ) # => false


File.readable?( "test.txt" )   # => true
File.writable?( "test.txt" )   # => true
File.executable?( "test.txt" ) # => false

File.zero?( "test.txt" )      # => true

File.size?( "text.txt" )     # => 1002

File::ftype( "test.txt" )     # => file

File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008
