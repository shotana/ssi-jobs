class BookmarksController < ApplicationController
  def add
  	Bookmark.create(user_id: current_user.id, offer_id: params[:offer_id])
    redirect_to :back
  end

  def delete
  	@bookmark = Bookmark.find(:first, :conditions => ["offer_id = ?", params[:id]])
  	@bookmark.destroy
  	redirect_to :back
  end
end
