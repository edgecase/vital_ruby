class Greeter
  def method_missing(sym, *args, &block)
    puts "Sorry, I'm confused!"
  end
end

greeter = Greeter.new
greeter.greet
