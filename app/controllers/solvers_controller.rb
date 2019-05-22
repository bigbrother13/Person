class SolversController < ApplicationController

  def index
    @solvers = Solver.first
  end

  def create
    @kill = Kill.new(params["solver"]["quantity"].to_i, params["solver"]["elimination"].to_i)
    @result = @kill.number
    if @result
      flash[:success] = 'The operation was successful'
    else
      flash[:danger]  = 'Error'
    end
  end

  private

  def solver_params
    params.require(:solver).permit(:quantity, :elimination)
  end
end
