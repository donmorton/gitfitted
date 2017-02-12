=begin
Author: Cole Greenwood
Date: 12 February 2017
BrickHack3
=end
class Outfit
  def initialize(name, hat, top, bottom, shoe, count)
    @name = name
    @hat = hat
    @top = top
    @bottom = bottom
    @shoe = shoe
    @count = count
  end

  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end
  def self.builder(file)
    lst = openfile(file)
    arr = []
    i = 00
    for x in lst
      h = Hat.new(style = x[2][2],color = x[2][3])
      t = Top.new(style = x[3][2], color = x[3],[3])
      b = Bottoms.new(style = x[4][2], color = x[4][3])
      s = Shoe.new(style = x[5][2], color = x[5][3])
      x.each{|y| next if y == 'NONE'}
      fit = Outfit.new(i.to_s,h,t,b,s, x[1].to_i)
      i += 1
      arr.push(fit)
    end
  end



class Hat
  attr_accessor :style,:color
  def initialize(style, color)
    @style = style.downcase!
    @color = color.downcase!
  end
  def self.rank(lst)
    newlst = lst.sort {|a, b| b[1].to_i <=> a[1].to_i}
    return newlst
  end

  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end

  def self.fitbuilder(file, style, color)
    arr = []
    grab = Outfit.builder(file)
    lst = rank(grab)
    for a in lst
      x = a[3].split
      arr.push(a) unless style != x[2] || color != x[1]
    end
    print arr
  end
  h1 = Hat.new("snap", 'red')
  Hat.fitbuilder('test','snap','red')
end


class Top
  attr_accessor :style
  attr_accessor :color
  def initialize(style, color)
    @style = style.downcase!
    style = style.gsub(/\s+/, "")
    @color = color.downcase!
    color = color.gsub(/\s+/, "")
  end

  def self.rank(lst)
    newlst = lst.sort {|a, b| b[1].to_i <=> a[1].to_i}
    return newlst
  end

  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end

  def self.fitbuilder(file, style, color)
    arr = []
    grab = Outfit.builder(file)
    lst = rank(grab)
    for a in lst
      x = a[3].split
      arr.push(a) unless style != x[2] || color != x[1]
    end
    print arr
  end
  t1 = Top.new(@style,@color)
  Top.fitbuilder('test','longt','black')
end


class Bottoms
  attr_accessor :style
  attr_accessor :color

  def initialize(style, color)
    @style = style.downcase!
    style = style.gsub(/\s+/, "")
    @color = color.downcase!
    color = color.gsub(/\s+/, "")

  end

  def self.rank(lst)
    newlst = lst.sort {|a, b| b[1].to_i <=> a[1].to_i}
    return newlst
  end
  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end
  def self.fitbuilder(file, style, color)
    arr = []
    grab = Outfit.builder(file)
    lst = rank(grab)
    for a in lst
      x = a[4].split
      arr.push(a) unless style != x[2] || color != x[1]
    end
    print arr
  end
  b1 = Bottoms.new(@style,@color)
  Bottoms.fitbuilder('test','jeans','blue')
end

class Shoe
  attr_accessor :style
  attr_accessor :color

  def initialize(style,color)
    @style = style.downcase!
    style = style.gsub(/\s+/, "")
    @color = color.downcase!
    color = color.gsub(/\s+/, "")
  end

  def self.rank(lst)
    newlst = lst.sort {|a, b| b[1].to_i <=> a[1].to_i}
    return newlst
  end

  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end
  def self.fitbuilder(file, style, color)
    arr = []
    grab = Outfit.builder(file)
    lst = rank(grab)
    for a in lst
      x = a[5].split
      arr.push(a) unless style != x[2] || color != x[1]
    end
    print arr
  end
  s1 = Shoe.new(@style,@color)
  Shoe.fitbuilder('test','vans','pink')
end
end
