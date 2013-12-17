class Post
  include Mongoid::Document
include Mongoid::Attributes::Dynamic
  field :title, type: String
  field :email, type: String
  field :author, type: String
  field :country, type: String
  field :created_date, type: Date
  field :body, type: String
  field :select_tag, type: String
  field :publish, type: Boolean
  field :post_number, type: Integer
validates :title, :author, :presence => true
end
