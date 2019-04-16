class Sponsor < ApplicationRecord
  validates :company, :logo, presence: true
  validates :logo, allow_blank: true, format: {with:%r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'}
end
