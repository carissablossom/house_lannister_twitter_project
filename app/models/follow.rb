class Follow < ActiveRecord::Base
  belongs_to :star, :class_name => "User"
  belongs_to :fan, :class_name => "User"
end
