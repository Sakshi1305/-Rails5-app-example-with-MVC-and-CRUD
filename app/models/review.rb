class Review < ApplicationRecord
  belongs_to :film
  validates :email, presence: :true
  validates_format_of :email, :with=> /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create, message: "Please enter a valid email address."
end
