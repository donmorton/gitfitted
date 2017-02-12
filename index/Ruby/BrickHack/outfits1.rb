class Outfits1
  def initialize(name, count)
    @name = name
    @count = count
  end
  def self.openfile(file)
    File.readlines(file).map do |line|
      line.split(':').map(&:to_s)
    end
  end
  fits = {}
  def self.builder(file)
    lst = openfile(file)
    for x in lst
      fits = [x[2],x[3],x[4]]
      print fits[Outfits1]
    end
  end
end

lst1 = Outfits1.builder('test')