class User < ApplicationRecord
  validates :name, {presence: true}
  validates :mail, {presence: true, uniqueness: true}

  def from_reports
    return Report.where(from_user: self.id)
  end

  def to_reports
    return Report.where(to_user: self.id)
  end
end
