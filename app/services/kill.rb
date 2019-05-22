class Kill
  attr_accessor :count, :every

  def initialize(params)
    @count = params.fetch(:count)
    @every = params.fetch(:every)
  end

  def number_last  
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