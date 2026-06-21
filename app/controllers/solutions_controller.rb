class SolutionsController < ApplicationController
  def index
    @solutions = Solution.active.ordered
  end

  def show
    @solution = Solution.active.find_by!(slug: params[:slug])
  end
end
