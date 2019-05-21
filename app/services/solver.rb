class Solver
  attr_reader :count

  def initialize(count:)
    @count = count
  end

  def number_last(every:)  
    arr = (1..count).to_a
    while arr.size > 1
      k = every % arr.size
      if k == 0
        b = arr.pop
      else
        b = arr.delete_at(k - 1)
      end
    end 
    b
  end 
end