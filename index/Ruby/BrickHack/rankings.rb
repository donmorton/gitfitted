=begin
Author: Cole Greenwood cmg7289@rit.edu
Date: 11 February 2017
=end

def openfile(file)
   File.readlines(file).map do |line|
     line.split(':').map(&:to_s)
   end
end

def objectbuilder(lst)

  lst.each{|x| fit = lst[0][x]}
end
print openfile('test')
=begin
    def stylebuilder(article, style)
    f = file.readlines(test)
    arr = Array.new()
    f.each {|x| next if article.style !in?; arr.push(x)}
    end
=end
