module FlickrHelper
  def photo_source(photo)
    "http://www.flickr.com/photos/#{photo.owner}/#{photo.id}"
  end
  
  def photo_width(photo)
    if photo.width_s.to_i > photo.height_s.to_i
      100
    else
      ((100.0/photo.height_s.to_f) * photo.width_s.to_i).to_i
    end
  end

  def photo_height(photo)
    if photo.width_s.to_i > photo.height_s.to_i
      ((100.0/photo.width_s.to_f) * photo.height_s.to_i).to_i
    else
      100
    end
  end
end