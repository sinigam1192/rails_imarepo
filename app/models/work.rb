class Work < ApplicationRecord

  def users
    return User.where(company_id: self.id)
  end

  def reports
    return Report.where(company_id: self.id)
  end
end
