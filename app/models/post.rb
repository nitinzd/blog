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
  validates :email, uniqueness: true
  validates :body, length: {minimum: 100, maximum: 500}
  validate :checkDate

    def valid_date(date)
regexp = /\d{2}\/\d{2}\/\d{4}/
date = date.to_s
    if date.include?("/")
      arr_date = date.split("/")
    elsif date.include?("-")
            arr_date = date.split("-")
    end
    if regexp.match(date) != nil
      if arr_date != nil && arr_date.length == 3
        if Date.valid_date?(arr_date[2].to_i, arr_date[1].to_i, arr_date[0].to_i)
          return true
        end
      end
    end
    return false
  end

  def checkDate
    if valid_date(created_date) == false
      errors.add(:created_date, "Invalid")
    end
  end

end
