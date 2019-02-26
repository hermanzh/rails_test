# 设计模式ruby实现

# 1. 装饰器模式：允许向一个现有的对象添加新的功能，同时不改变其结构，对现有类的包装
# 可以把controller中的要显示在view上的对象用装饰者加工，把view显示逻辑放在装饰器中
#
# Shape
#       1. ==> Circle, Rectangle
#       2. ==> ShapeDecorator  ==> RedShapeDecorator
#
#



class Shape
  def draw ; end
end

class Circle < Shape
  def draw
    puts 'Shape: Circle'
  end
end

class Rectangle < Shape
  def draw
    puts 'Shape: Rectangle'
  end
end

class ShapeDecorator < Shape
  def initialize(shape)
    @shape = shape
  end

  def draw
    @shape.draw
  end
end

class RedShapeDecorator < ShapeDecorator
  def initialize(shape)
    super(shape)
  end

  def draw
    @shape.draw
    setRedBorder
  end

  private

  def setRedBorder
    puts 'Border Color: Red'
  end
end

circle = Circle.new

red_circle = RedShapeDecorator.new(circle)

red_rectangle = RedShapeDecorator.new(Rectangle.new)

puts 'Circle with normal border'
circle.draw

puts 'Circle of red border'
red_circle.draw

puts 'Rectangle of red border'
red_rectangle.draw


#=> Circle with normal border
#=> Shape: Circle
#=> Circle of red border
#=> Shape: Circle
#=> Border Color: Red
#=> Rectangle of red border
#=> Shape: Rectangle
#=> Border Color: Red