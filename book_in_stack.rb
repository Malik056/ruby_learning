class BookInStock
    
    attr_reader :isbn
    attr_accessor :price
    
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    def to_s
        "ISBN: #{@isbn}, Price: #{@price}"
    end
    def price=(new_price)
        @price = new_price
    end
    def price_in_cents
        Integer(price*100)
    end
end



b1 = BookInStock.new("isbn1", 3)
puts b1
b2 = BookInStock.new("isbn2", 3.14)
puts b2
b3 = BookInStock.new("isbn3", "5.67")
p b3

book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
# puts "Price = #{book.price}"

book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
# puts "Price = #{book.price}"

book.price = 13.4
puts "New Price = #{book.price}"

puts "Price in cents = #{book.price_in_cents}"