class ContributionsController < ApplicationController
  def create
    @contribution = Contribution.create(contribution_params)
    redirect_to book_path(@contribution.book_id)
  end

  private

  def contribution_params
    params.require(:contribution).permit(:author_id, :book_id)
  end
end
