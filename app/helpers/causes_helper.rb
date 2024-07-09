module CausesHelper

  def progress_percentage(donated_amount, goal_amount)

    if donated_amount.to_f === 0
      return 0
    elsif (donated_amount.to_f / goal_amount.to_f * 100).round(0) > 100
      return 100
    else
      return (donated_amount.to_f / goal_amount.to_f * 100).round(0)
    end
    
  end
end
