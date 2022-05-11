# frozen_string_literal: true

class ArabicCalculator
  def self.convert_zero
    ''
  end

  def self.convert_ones(number)
    'I' * number
  end

  def self.convert_four
    'IV'
  end

  def self.convert_five
    'V'
  end

  def self.convert_nine
    'IX'
  end

  def self.convert_tens(number)
    'X' * (number / 10).floor
  end

  def self.convert_forty
    'XL'
  end

  def self.convert_fifty
    'L'
  end

  def self.convert_ninety
    'XC'
  end

  def self.convert_hundreds(number)
    'C' * (number / 100).floor
  end

  def self.convert_four_hundred
    'CD'
  end

  def self.convert_five_hundred
    'D'
  end

  def self.convert_nine_hundred
    'CM'
  end

  def self.convert_thousands(number)
    'M' * (number / 1000).floor
  end

  def self.to_roman_numeral(number = nil)
    case number
    when 0
      return ''
    when 1..3
      return convert_ones(number)
    when 4
      return convert_four
    when 5
      return convert_five
    when 5..8
      return convert_five + convert_ones(number - 5)
    when 9
      return convert_nine
    when 10..39
      return convert_tens(number) + to_roman_numeral(number % 10)
    when 40..49
      return convert_forty + to_roman_numeral(number - 40)
    when 50..89
      return convert_fifty + to_roman_numeral(number - 50)
    when 90..99
      return convert_ninety + to_roman_numeral(number - 90)
    when 100..399
      return convert_hundreds(number) + to_roman_numeral(number % 100)
    when 400..499
      return convert_four_hundred + to_roman_numeral(number - 400)
    when 500..899
      return convert_five_hundred + to_roman_numeral(number - 500)
    when 900..999
      return convert_nine_hundred + to_roman_numeral(number - 900)
    when 1000..3999
      return convert_thousands(number) + to_roman_numeral(number % 1000)
    end

    'Não consigo converter número acima de 3999'
  end
end
