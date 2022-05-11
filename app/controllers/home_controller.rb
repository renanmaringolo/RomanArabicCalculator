# frozen_string_literal: true

class HomeController
  def self.menu
    puts '==== Calculadora RomanoArábica ===='
    puts '## Menu ##'
    puts '1 - Converter número Romano para Arábicos'
    puts '2 - Converter para número Romano'
    puts '0 - Sair'

    print 'Escolha uma opção: '
    opcao = gets.to_i

    case opcao
    when 1
      print 'Digite o número Romano para conversão (Ex: I, II, D, L...): '
      number = gets.strip.upcase

      puts "O número Romano convertido em Arábico é: #{RomanCalculator.to_arabic_numeral(number)}"
    when 2
      print 'Digite o número para converter em Romano (Ex: 1, 173, 222, 2933...): '
      number = gets.strip.to_i

      puts "O número Arábico convertido em Romano é: #{ArabicCalculator.to_roman_numeral(number)}"
    when 0
      puts see_you
      exit
    end
  end

  def self.not_convert?
    puts 'Deseja converter novamente? S/N'
    wish_consult = gets.strip
    wish_consult.upcase == 'N'
  end

  def self.see_you
    puts
    puts '             OOOOOOOOOOO               '
    puts '         OOOOOOOOOOOOOOOOOOO           '
    puts '      OOOOOO  OOOOOOOOO  OOOOOO        '
    puts '    OOOOOO      OOOOO      OOOOOO      '
    puts '  OOOOOOOO  #   OOOOO  ---- OOOOOOO    '
    puts ' OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   '
    puts 'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  '
    puts 'OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  '
    puts 'OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  '
    puts ' OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   '
    puts '  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    '
    puts '    OOOOO   OOOOOOOOOOOOOOO   OOOO     '
    puts '      OOOOOO   OOOOOOOOO   OOOOOO      '
    puts '         OOOOOO         OOOOOO         '
    puts '             OOOOOOOOOOOO              '
    puts
    puts '             Até mais                  '
    puts
  end
end
