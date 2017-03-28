class Sample < ActiveRecord::Base
	belongs_to :user

	has_attached_file :img_before, styles: { carousel: "750x500#", large: "600x400#", medium: "300x200", small: "100x100#" }, :default_url => "no_image.png"
  validates_attachment_content_type :img_before, content_type: /\Aimage\/.*\Z/

  has_attached_file :img_after, styles: { carousel: "750x500#", large: "600x400#", medium: "300x200#", small: "100x100#" }, :default_url => "no_image.png"
  validates_attachment_content_type :img_after, content_type: /\Aimage\/.*\Z/
end
