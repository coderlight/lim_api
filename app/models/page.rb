class Page < ActiveRecord::Base
  has_many :h1_tags, dependent: :destroy
  has_many :h2_tags, dependent: :destroy
  has_many :h3_tags, dependent: :destroy
  has_many :url_tags, dependent: :destroy
end
