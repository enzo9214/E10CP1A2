module Formula
  def perimetro
	2*@lado1 + 2*@lado2
  end

  def area
	@lado1*@lado2
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @lado1 = base
    @lado2 = altura
  end

  def lados
    puts "los lados miden #{@lado1} y #{@lado2}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado1 = lado
    @lado2 = lado
  end

  def lados
    puts "los lados miden #{@lado1}"
  end
end

rectangulo = Rectangulo.new(10,5)
cuadrado = Cuadrado.new(5)

rectangulo.lados
puts rectangulo.perimetro
puts rectangulo.area

cuadrado.lados
puts cuadrado.perimetro
puts cuadrado.area