class CashRegister
    attr_accessor :total, :void_last_transaction
    attr_reader :discount
    
  def initialize(discount=0) 
      @discount = discount
      @total = 0
      @items = []
  end

  def add_item(title, price, qty = 1)
    self.total += (price * qty)
    qty.times do
      @items << title
    end
  end

  def apply_discount
    if @discount > 0 then
      "After the discount, the total comes to $#{@total -= @discount * 10}."
    else
     'There is no discount to apply.'
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    price = self.add_item(price)
    qty = self.add_item(qty)
    @void_last_transaction = price * qty
    @total -= @void_last_transaction
  end

end