class Account < ActiveRecord::Base
  attr_accessible :name

  # relationships
  has_many :users
  has_many :projects

end
