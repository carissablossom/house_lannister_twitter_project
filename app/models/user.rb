class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true, presence: true
  validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  has_many :woots

  has_many :references_to_stars, class_name: "Follow", foreign_key: "fan_id"
  has_many :stars, through: :references_to_stars

  has_many :references_to_fans, class_name: "Follow", foreign_key: "star_id"
  has_many :fans, through: :references_to_fans

end
