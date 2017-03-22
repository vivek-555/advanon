class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :website, optional: true

  # ensure of presence and minimum length of 3 characters
  validates :title, :short_url, length: {minimum: 3}, presence: true
  # ensure the presence and a valid url
  validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true

  # ensure that user_id is present in every Bookmark
  validates :user_id, presence: true

  # only set_website if url is changed
  before_save :set_website, if: :url_changed?

  private

  def set_website
    # byebug

    # FIXME: Not sure if following fix will work for all possible combinations of all this real-world
    ### Therefore - use this gem - https://rubygems.org/gems/public_suffix

    top_level_domain = URI.parse(self.url).host.match(/\w*.com$/)[0]
    self.website_id = Website.find_or_create_by(top_level_domain: top_level_domain).id
  end

end
