class AboutController < ApplicationController
  def index
    @about = "This is the about page"
    @AboutList = About.all
  end

  def show
    @about = About.find(params[:id])
  end
end
