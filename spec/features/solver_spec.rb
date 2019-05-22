require 'rails_helper'

RSpec.describe 'Solver' do
  let!(:hundred) { create :banknote, nominal: 100, quantity: 3 }
  let!(:fifty)   { create :banknote, nominal: 50,  quantity: 3 }
  
  it 'I can find out who was the last' do
    arr = Solver.new(count: 7)
    expect(arr.number_last(every: 10)).to eq(6)
  end

  it 'I can find out who was the last' do
    arr = Solver.new(count: 10)
    expect(arr.number_last(every: 7)).to eq(4)
  end
end