class SolversController < ApplicationController

  def index
    @solvers = Solver.first
  end

  def create
    @solver = find(solver_params)
    if @solver.save
      rendirect_to :index
    else
      render 
    end
  end

  private

  def solver_params
    params.require(:sovre).permit(:quantity, :elimination)
  end
end
