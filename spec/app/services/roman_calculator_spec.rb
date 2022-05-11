# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RomanCalculator do
  subject { described_class }

  context 'when input is unknown char' do
    it { expect(subject.to_arabic_numeral('123')).to eq('Número Romano não é válido 123') }
  end

  context '#conversions chars to arabic' do
    it { expect(subject.single_char_conversion('I')).to(eq(1)) }
    it { expect(subject.two_char_conversion('IV')).to(eq(4)) }
  end

  context '#to_arabic' do
    it { expect(subject.to_arabic_numeral('XLIX')).to eq(49) }
    it { expect(subject.to_arabic_numeral('CIX')).to eq(109) }
    it { expect(subject.to_arabic_numeral('I')).to eq(1) }
    it { expect(subject.to_arabic_numeral('II')).to eq(2) }
    it { expect(subject.to_arabic_numeral('III')).to eq(3) }
    it { expect(subject.to_arabic_numeral('IV')).to eq(4) }
    it { expect(subject.to_arabic_numeral('V')).to eq(5) }
    it { expect(subject.to_arabic_numeral('VI')).to eq(6) }
    it { expect(subject.to_arabic_numeral('VII')).to eq(7) }
    it { expect(subject.to_arabic_numeral('VIII')).to eq(8) }
    it { expect(subject.to_arabic_numeral('IX')).to eq(9) }
    it { expect(subject.to_arabic_numeral('X')).to eq(10) }
    it { expect(subject.to_arabic_numeral('MIX')).to eq(1009) }
  end
end
