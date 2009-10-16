class FlickrController < ApplicationController
  def all
    @photos = flickr.photos.getRecent({:extras => 'url_s'})
  end
end