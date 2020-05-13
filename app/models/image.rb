class Image < ApplicationRecord
  validates :url, format: { with: %r{https?://.+\..+}, message: 'must be a valid url' }
end
