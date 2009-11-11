class FlickrController < ApplicationController
  def all
    if params[:user] || params[:user_id]
      begin
        user_id = params[:user_id] || flickr.people.findByUsername(:username => params[:user]).id
        @photos = flickr.people.getPublicPhotos({:user_id => user_id, :per_page => (params[:id] || 10), :extras => 'url_s'})
      rescue
        get_recent_photos
      end
    else
      get_recent_photos
    end
  end
  
  protected
  def get_recent_photos
    @photos = flickr.photos.getRecent({:extras => 'url_s', :per_page => (params[:id] || 10)})
  end
end