require "luhn/version"

class Fixnum
  def luhn
    digits = self.to_s.chars.map(&:to_i)
    sum = digits.reverse.each_with_index.map{ |x, i| i.even? ? (x * 2).divmod(10).inject(:+) : x }.reverse.inject(:+)
    (10 - sum % 10)
  end

  def luhn?
    self.div(10).luhn == (self % 10)
  end

  def luhn!
    self * 10 + luhn
  end
end

class String
  def luhn
    self.gsub(/\D+/, '').to_i.luhn.to_s
  end

  def luhn?
    self.gsub(/\D+/, '').to_i.luhn?
  end

  def luhn!
    self + luhn
  end
end
