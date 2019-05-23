class Solver
  attr_accessor :count, :every

  def initialize(count: 10, every: 5)
    @count = count
    @every = every
  end

  def number
    arr = (1..count).to_a
    while arr.size > 1
      k = every % arr.size
      if k == 0
        last = arr.pop
      else
        last = arr.delete_at(k - 1)
      end
    end 
    last
  end
end
