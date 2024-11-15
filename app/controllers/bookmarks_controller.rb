class BookmarksController < ApplicationController

  def new
    @bookmarks = bookmark.all
  end


  def create
    @list = list.find(:params[:id])
  end

  def destroy
  end

end
