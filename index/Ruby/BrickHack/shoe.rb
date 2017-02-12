class Shoe
  attr_accessor :style
  attr_accessor :color
  def initialize(name,style, color)
    @style = style.downcase!
    style = style.gsub(/\s+/, "")
    @color = color.downcase!
    color = color.gsub(/\s+/, "")
    print style
    print color
  end

  def fitgrab()
    return
  else
    print 'no'
  end
end

sh1 = Shoe.new('sh1','Sneakers', 'White')
sh1.fitgrab