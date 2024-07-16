module ApplicationHelper
  
  def progress_percentage(donated_amount, goal_amount)

    if donated_amount.to_f === 0
      return 0
    elsif (donated_amount.to_f / goal_amount.to_f * 100).round(1) > 100
      return 100
    else
      return (donated_amount.to_f / goal_amount.to_f * 100).round(1)
    end
    
  end
  
  def circle_progress_percentage(donated_amount, goal_amount, radius)
    return  (2 * 3.14 * radius) * ((100 - progress_percentage(donated_amount, goal_amount))/100)
  end
end
