module FlickrHelper
  def photo_width(photo)
    if photo.width_s.to_i > photo.height_s.to_i
      50
    else
      ((50.0/photo.height_s.to_f) * photo.width_s.to_i).to_i
    end
  end

  def photo_height(photo)
    if photo.width_s.to_i > photo.height_s.to_i
      ((50.0/photo.width_s.to_f) * photo.height_s.to_i).to_i
    else
      50
    end
  end
end