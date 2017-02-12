class Top
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

t1 = Top.new('t1','LONG T', 'RED')
t1.fitgrab