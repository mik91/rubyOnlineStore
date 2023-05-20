class AboutController < ApplicationController
  def index
    @about = "This is the about page"
    @AboutList = About.all
  end
end
