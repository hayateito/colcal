class Combination < ActiveRecord::Base
  has_many :users
  has_many :calevents
  has_attached_file :avatar,
    styles: { medium: "560x560!",thumb:"560x560!" }

  validates_attachment_content_type :avatar,
    content_type: ["image/jpg","image/jpeg","image/png"]

end
