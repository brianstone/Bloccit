class Post < ActiveRecord::Base
  extend Paginate
  has_many :comments
  belongs_to :user
  belongs_to :topic
  has_one :summary

  default_scope { order('created_at DESC') }

  validates :title, length: {minimum: 5 }, presence: true
  validates :body, length: {minimum: 20 }, presence: true
  # validates :topic, presence: true
  validates :user, presence: true
end
