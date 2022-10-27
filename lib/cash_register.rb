
class CashRegister
    attr_accessor :discount, :quantity, :total

def add_item (title, price, quantity = 1)
    if quantity == 1
    @total += price 
    @@arr << title
@@price << price
    elsif quantity > 1
        @total += price * quantity
        quantity.times do |time|
            @@arr << title
            @@price << price 
        end
    end
   
end
def apply_discount
    if discount > 0
@total = @total* (100-discount)/100
"After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."  
    end 
end

def items 
@@arr
end 
 
def void_last_transaction
   new_price = @@price.uniq()
   new_price.pop()
    @total = new_price.sum {|sum| sum}

end

def initialize discount = 0, total = 0
@discount = discount
@total = total
@@arr = []
@@price = []
end
end

