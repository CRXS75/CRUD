class Group < ApplicationRecord
  has_and_belongs_to_many :users

  def join(user)
    unless self.users.include?(user)
      self.users << user
    end
  end

  def quit(user)
    if self.users.include?(user)
      self.users.delete(user)
    end
  end

end
