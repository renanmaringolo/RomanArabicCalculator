# frozen_string_literal: true

class RomanCalculator
  def self.single_char_conversion(number)
    {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }[number]
  end

  def self.two_char_conversion(number)
    {
      'IV' => 4,
      'IX' => 9,
      'XL' => 40,
      'XC' => 90,
      'CD' => 400,
      'CM' => 900
    }[number]
  end

  def self.to_arabic_numeral(number = nil)
    return 0 if number.empty?
    return "Número Romano não é válido #{number}" if /[^IVXLCDM]/.match(number)

    if number.length == 1
      return single_char_conversion(number)
    elsif number.length >= 2
      last_two = number[-2..]
      return two_char_conversion(last_two) + to_arabic_numeral(number[0..-3]) if /IV|IX|XL|XC|CD|CM/.match(last_two)
    end

    to_arabic_numeral(number[-1]) + to_arabic_numeral(number[0..-2])
  end
end
