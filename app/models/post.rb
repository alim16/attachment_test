class Post < ActiveRecord::Base
#has_attached_file :img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
#do_not_validate_attachment_file_type :img
has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

end
