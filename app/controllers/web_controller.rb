class WebController < ApplicationController

  def index
  	@notees = notees
    @categories = notee_categories
  end

  def show
    @notee = notee(params[:id])
  end

  def category
    @notees = notees(params[:category])
  end

  def archives
    @notees = notee_archives(params[:year].to_i, params[:month].to_i)
  end
end
