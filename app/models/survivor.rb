class Survivor < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :city

  def city_name
     city.name if city
  end

end
