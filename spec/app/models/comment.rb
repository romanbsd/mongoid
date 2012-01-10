class Comment
  include Mongoid::Document
  include Mongoid::Versioning
  include Mongoid::Timestamps

  field :title, :type => String
  field :text, :type => String

  belongs_to :account
  belongs_to :movie
  belongs_to :rating
  belongs_to :wiki_page
  validates :title, :presence => true
  validates :movie, :rating, :associated => true
end
