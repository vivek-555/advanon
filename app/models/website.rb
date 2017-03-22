class Website < ApplicationRecord

  has_many :bookmarks

  validates :top_level_domain, presence: true

end
