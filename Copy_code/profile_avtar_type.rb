# profile_avtar_type.rb

def correct_avatar_type
    if avatar.attached? && !avatar.content_type.in?(%w(image/jpeg image/png))
      errors.add(:avatar, "must be JPEG or PNG.")
    elsif !avatar.attached?
      errors.add(:avatar, "is required.")
    end
  end