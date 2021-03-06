class Color
    attr_reader :r, :g, :b
    def initialize(r, g, b)
      @r = r
      @g = g
      @b = b
    end
  
    def brightness_index
      return ( 299*self.r + 587*self.g + 114*self.b) / 1000
    end
  
    def brightness_difference(another_color)
      return (self.brightness_index - another_color.brightness_index).abs
    end
  
    def hue_difference(another_color)
        return (self.r - another_color.r).abs + (self.g-another_color.g).abs + (self.b - another_color.b).abs
    end
  
    def enough_contrast?(another_color)
      if(self.brightness_difference(another_color) > 125 && self.hue_difference(another_color) > 500) 
        return true
      else
        return false
      end
    end
  end