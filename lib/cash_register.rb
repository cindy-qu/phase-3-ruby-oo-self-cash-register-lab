require 'pry'

class CashRegister
    attr_accessor :discount, :total, :cost, :items
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item(title, price, quantity = 1)
       
        self.cost = price * quantity
        self.total += self.cost
        quantity.times do
            self.items << title
        end

    end
    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else self.total = (self.total * ((100.0 - self.discount) / 100 )).to_i
            "After the discount, the total comes to $#{total}."
        end
    end
   def void_last_transaction
    self.total -= self.cost
   end
end

