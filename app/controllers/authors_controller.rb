class AuthorsController < ApplicationController
    def index
      @authors = Author.all
    end
    def show
      @author = set_author
      @contributions = @author.contributions
    end
    def new
      @author = Author.new
    end

    def create
      @author = Author.find_or_create_by(author_params)
      redirect_to author_path(@author)
    end

    def edit
      @author = set_author
    end

    def update
      @author = set_author
      @author.update(author_params)
      redirect_to author_path(@author)
    end

    def destroy
      @author = set_author
      @author.contributions.destroy_all
      @author.destroy
      redirect_to authors_path
    end

    private

    def set_author
      Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name, :birth_year)
    end
end
