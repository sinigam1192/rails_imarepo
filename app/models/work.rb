class Work < ApplicationRecord

  def users_list
    return User.where(company_id: self.id)
  end
end
