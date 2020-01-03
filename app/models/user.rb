class User < ApplicationRecord
  #has_secure_password
  validates :name, {presence: true}
  validates :mail, {presence: true, uniqueness: true}


  def from_reports
    return Report.where(from_user: self.id)
  end

  def to_reports
    return Report.where(to_user: self.id)
  end

  def company_users
    return User.where(company_id: self.company_id)
  end
end
