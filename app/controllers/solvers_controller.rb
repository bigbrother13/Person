class SolversController < ApplicationController

  def index
    @solvers = Solver.first
  end

  def create
    @kill = Kill.new(:quantity, :elimination)
    result = kill.number_last(number_last_params(b))
    if result.any?
      flash[:success] = 'The operation was successful'
    else
      flash[:danger]  = 'Not enough money in the account'
    end
    redirect_to root_path
  end

  private

  def solver_params
    params.require(:solver).permit(:quantity, :elimination)
  end
end
