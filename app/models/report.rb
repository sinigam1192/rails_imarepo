class Report < ApplicationRecord
  def ex_status
    if self.status == 1
      return "確認済み"
    elsif self.status == 2
      return "到着完了"
    elsif self.status == 3
      return "退場"
    else
      return "未確認"
    end
  end

  def push_time_now
    if self.status == 2
      arrival_time = self.arrival_time.strftime("%H:%M")
      return arrival_time
    elsif self.status == 3
      withdrawal_time = self.withdrawal_time.strftime("%H:%M")
      return withdrawal_time
      end
  end
end
