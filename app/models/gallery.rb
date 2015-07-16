class Gallery < ActiveRecord::Base
		belongs_to :user
        has_attached_file :image

        validates_attachment_content_type :image,
	    content_type: /^image\/(png|gif|jpeg)/,
	    message: "Only images allowed"
end