# begin
#   # tentar
#   file = File.open("./hello.txt")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   # obter erros
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts "ERROR: " + e.message
end

soma(10, "5")
