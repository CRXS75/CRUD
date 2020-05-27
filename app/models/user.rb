class User < ApplicationRecord

  has_many :articles, dependent: :destroy
  has_and_belongs_to_many :groups

  validates :username, :presence => true, :length => { in: 3...20 }, :case_sensitive => false, :uniqueness => true
  validates :password, :presence => true, :length => { minimum: 4 }

  has_secure_password

  def self.authenticate(login, submitted_password)
    user = User.find_by_username(login)
    if user.nil?
      user = User.find_by_username(login)
    end
    return nil if user.nil?
    return user if user.authenticate(submitted_password)
  end

end
