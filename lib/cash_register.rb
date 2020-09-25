class CashRegister

  attr_accessor :total, :discount, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
      quantity.times do items << title
    end
  end

  def apply_discount()
    self.discount = self.discount.to_f/100
    self.total = self.total - self.total*self.discount
    if self.total != 0
      return "After the discount, the total comes to $#{total.to_1}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.price[-1]
    if self.total == 0.0
    end
  end


end
