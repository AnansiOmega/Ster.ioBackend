class User < ApplicationRecord
    has_secure_password
    has_one_attached :image
    has_many :collab_tracks, dependent: :destroy
    has_many :song_collabs, through: :collab_tracks
    has_many :songs, through: :song_collabs

    validates :username, :fname, :lname, :email, :password_digest, presence: true
    validates :username, :email, uniqueness: true
    validate :real_email?

    def real_email? # Verifies if email has an @ and the 4th to last position of email field is a period.
        if self.email.include?("@") && self.email.last(4).first == "."
         true
        else
         errors.add(:email, "must be valid")
        end
     end

end
