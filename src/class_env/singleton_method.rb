require 'book'

daemon = Book.new("Daemon", "Suarez")
geb = Book.new("Godel, Escher and Bach",
                "Hofstedter")

def geb.subtitle
  "An Eternal Golden Braid"
end

geb.subtitle    # => "An Eternal Golden Braid"
daemon.subtitle # NoMethodError!
