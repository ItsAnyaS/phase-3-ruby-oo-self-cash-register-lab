class CashRegister

    attr_accessor :total, :discount, :total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total?
        self.total
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount
    if self.discount != 0
      discount_as_percent = (100.0 - self.discount.to_f) / 100
      self.total = (self.total * discount_as_percent).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items(title, amount, quantity=1)
    self.items << {title: title, amount: amount, quantity: quantity } 
    self.items.uniq

  end

end