class Pastad < ActiveRecord::Base
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg)/
end
