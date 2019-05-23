require 'rails_helper'

RSpec.describe Solver do
  it 'I can find out who was the last' do
    solver = Solver.new(count: 7, every: 10)
    expect(solver.number).to eq(6)
  end

  it 'I can find out who was the last' do
    solver = Solver.new(count: 10, every: 7)
    expect(solver.number).to eq(4)
  end

  it 'I can find out who was the last' do
    solver = Solver.new(count: 0, every: 0)
    expect(solver.number).to eq(nil)
  end

  it 'I can find out who was the last' do
    solver = Solver.new(count: 10, every: -1)
    expect(solver.number).to eq(1)
  end

  it 'I can find out who was the last' do
    solver = Solver.new(count: -1, every: nil)
    expect(solver.number).to eq(nil)
  end
end
