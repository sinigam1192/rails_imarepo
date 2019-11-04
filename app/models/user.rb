class User < ApplicationRecord
  validates :name, {presence: true}
  validates :mail, {presence: true, uniqueness: true}

  def reports
    return Report.where(from_user: self.id)
  end
end
