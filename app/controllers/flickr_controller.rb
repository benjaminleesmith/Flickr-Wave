class FlickrController < ApplicationController
  def all
    @photos = flickr.photos.getRecent({:extras => 'url_s', :per_page => (params[:id] || 10)})
  end
end