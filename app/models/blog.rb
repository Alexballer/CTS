class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend friendlyId
  friendly_Id :title, use: :slugged
end