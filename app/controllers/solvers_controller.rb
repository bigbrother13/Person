class SolversController < ApplicationController
  def new
    @solver = Solver.new
    @result = params[:answer]
  end

  def create
    @solver = Solver.new(count: solver_params[:count].to_i, every: solver_params[:every].to_i)
    @result = @solver.number
    if @result
      flash[:success] = 'The operation was successful'
    else
      flash[:danger]  = 'Error'
    end
    redirect_to new_solver_path(answer: @result)
  end

  private

  def solver_params
    params.require(:solver).permit(:count, :every)
  end
end
