class SolversController < ApplicationController

  def index
    @solvers = Solver.first
  end

  def create
    binding.pry
    @kill = Kill.new(params[:count], params[:every])
    result = @kill.number
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
