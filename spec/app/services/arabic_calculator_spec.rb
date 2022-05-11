# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ArabicCalculator do
  subject { described_class }

  context 'when input is unknown char' do
    it { expect(subject.to_roman_numeral('abc')).to eq('Não consigo converter número acima de 3999') }
  end

  context '#conversions' do
    it { expect(subject.convert_zero).to eq('')}
    it { expect(subject.convert_ones(1)).to(eq('I')) }
    it { expect(subject.convert_four).to(eq('IV')) }
    it { expect(subject.convert_five).to(eq('V')) }
    it { expect(subject.convert_nine).to(eq('IX')) }
    it { expect(subject.convert_tens(10)).to(eq('X')) }
    it { expect(subject.convert_forty).to(eq('XL')) }
    it { expect(subject.convert_fifty).to(eq('L')) }
    it { expect(subject.convert_ninety).to(eq('XC')) }
    it { expect(subject.convert_hundreds(100)).to(eq('C')) }
    it { expect(subject.convert_four_hundred).to(eq('CD')) }
    it { expect(subject.convert_five_hundred).to(eq('D')) }
    it { expect(subject.convert_nine_hundred).to(eq('CM')) }
    it { expect(subject.convert_thousands(1000)).to(eq('M')) }
  end

  context '#when match on numbers' do
    it { expect(subject.to_roman_numeral(1)).to eq('I') }
    it { expect(subject.to_roman_numeral(2)).to eq('II') }
    it { expect(subject.to_roman_numeral(3)).to eq('III') }
    it { expect(subject.to_roman_numeral(4)).to eq('IV') }
    it { expect(subject.to_roman_numeral(5)).to eq('V') }
    it { expect(subject.to_roman_numeral(6)).to eq('VI') }
    it { expect(subject.to_roman_numeral(7)).to eq('VII') }
    it { expect(subject.to_roman_numeral(8)).to eq('VIII') }
    it { expect(subject.to_roman_numeral(9)).to eq('IX') }
    it { expect(subject.to_roman_numeral(10)).to eq('X') }
    it { expect(subject.to_roman_numeral(1009)).to eq('MIX') }
  end
end
