class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  paginates_per 10

  field :title, type: String
  field :author, type: String
  field :body, type: String
  index({title: 1}, {unique: true})

  belongs_to :User
end
