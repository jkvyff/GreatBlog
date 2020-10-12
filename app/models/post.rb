class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  index({title: 1}, {unique: true})
end
