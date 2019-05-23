class SolversController < ApplicationController
  def new
    @solver = Solver.new
    @result = params[:answer]
  end

  def create
    @solver = Solver.new(solver_params)
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
    { 
      count: params[:solver][:count].to_i,
      every: params[:solver][:every].to_i
    }
  end
end
