class UserSerializer < ActiveModel::Serializer
  has_many :activities

  attributes :username
end
