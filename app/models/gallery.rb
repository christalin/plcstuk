class Gallery < ActiveRecord::Base
		belongs_to :user
        has_attached_file :image,                  :styles => {
    :original  => "500x500>",
    :medium => "300x300>",
    :large =>   "400x400>" }




        validates_attachment_content_type :image,
	    content_type: /^image\/(png|gif|jpeg)/,
	    message: "Only images allowed"
end
