class SiteController < ApplicationController
  def search
    @results = []
    return if params[:term].blank?

    # where("title like ?", "%#{name}%")
    artists = Artist.where("name like ?", "%#{params[:term]}%")
    labels = Label.where("name like ?", "%#{params[:term]}%")
    @results = artists + labels
  end
end
