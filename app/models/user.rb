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

  def company_user
    return User.where(company_id: self.company_id)
  end

  def companys
    return Work.where(company_id: self.company_id)
  end

  def free_reports
    return reports = Report.where(from_user: self.id, company_id: nil)
  end


end
