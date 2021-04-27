class Restaurant
    def initialize(menu)
      @menu = menu
    end
  
    def cost(*orders)
        total_cost = 0;
      for order in orders 
        for item in order.keys
          total_cost = total_cost+order[item]*@menu[item]
        end
      end
      return total_cost
    end
end