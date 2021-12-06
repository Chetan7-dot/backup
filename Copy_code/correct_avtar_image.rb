# avtar method for product in model

def correct_avatar_type
  if images.attached?
		images.each do |image|
  	 if !image.content_type.in?(%w(image/jpeg image/png))
        errors.add(:images, "must be JPEG or PNG.")
      end
  	end
			else
    errors.add(:images, "are required.")
  end
end
