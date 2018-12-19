class ContributionsController < ApplicationController
  def create
    @contribution = Contribution.find_or_create_by(contribution_params)
    redirect_to book_path(@contribution.book_id)
  end
  def destroy
    @contribution = Contribution.find(params[:id])
    @book_id = @contribution.book_id
    @contribution.destroy
    redirect_to book_path(@book_id)
  end
  private

  def contribution_params
    params.require(:contribution).permit(:author_id, :book_id)
  end
end
