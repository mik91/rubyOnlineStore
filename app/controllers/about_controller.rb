class AboutController < ApplicationController
  def index
    @about = "This is the about page"
    @AboutList = About.all
  end

  def show
    @about = About.find(params[:id])
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)

    if @about.save
      redirect_to @about
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])

    if @about.update(about_params)
      redirect_to @about
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy

    redirect_to about_index_path, status: :see_other
  end

  private
    def about_params
      params.require(:about).permit(:title, :body)
    end
end
