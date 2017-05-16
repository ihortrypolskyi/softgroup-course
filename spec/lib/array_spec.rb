require 'rails_helper'
require './lib/array'


RSpec.describe Array, :type => :class do
  describe 'method top returns' do
    subject {[1, 2, 2, 3, 3, 3 ]}
    it 'the most frequent element when no supplied value for count' do
      expect(subject.top).to eq(3)
    end

    it 'the most frequent element when count < 0' do
      expect(subject.top(-1)).to eq(3)
    end

    it 'the most frequent element when count = 1' do
      expect(subject.top(1)).to eq(3)
    end

    it 'array with appropriate quantity of the most frequent elements when count > 1' do
      expect(subject.top(2)).to eq([3,2])
    end
  end
 end