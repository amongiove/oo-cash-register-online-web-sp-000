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
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    last_item = @items.pop()
    self.total - last_item


  end


end
