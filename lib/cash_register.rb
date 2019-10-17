class CashRegister
  
  attr_accessor :discount, :total, :items
  
  @items = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items += title
  end
  
  def apply_discount()
    if(discount != 0)
      @total = @total - (@total * (@discount/100.00))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end

  end
  
  def items
    @items
  end
  
  
end
