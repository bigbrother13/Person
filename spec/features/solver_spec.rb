require 'rails_helper'

RSpec.describe 'Solver' do
  let!(s) { create :solver, count: 7, every: 10 }
  
  it 'I can find out who was the last' do
    arr = Solver.new(count: 7)
    expect(arr.number_last(every: 10)).to eq(6)
  end

  it 'I can find out who was the last' do
    arr = Solver.new(count: 10)
    expect(arr.number_last(every: 7)).to eq(4)
  end

  it 'I can find out who was the last' do
    arr = Solver.new(count: 0)
    expect(arr.number_last(every: 0)).to eq(nil)
  end

  it 'I can find out who was the last' do
    arr = Solver.new(count: 10)
    expect(arr.number_last(every: -1)).to eq(1)
  end

  it 'I can find out who was the last' do
    arr = Solver.new(count: -1)
    expect(arr.number_last(every: 10)).to eq(nil)
  end
end