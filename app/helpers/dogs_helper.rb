module DogsHelper
  def age_string(dob, is_dead, dod)
    if !is_dead
      return get_age(dob,Date.today)
    else
      age_string = get_age(dob,dod)
      return "Crossed the Rainbow Bridge at " + age_string
    end
  end

  def get_age(start_date,end_date)
    age = 0
    if start_date.year < end_date.year
      age = end_date.year - start_date.year
      if start_date.month > end_date.month
        age -= 1
      elsif start_date.month == end_date.month && start_date.day > end_date.day
        age -= 1
      end
      return age.to_s + " years old"
    elsif
      age = end_date.month - start_date.month
      if start_date.day > end_date.day
        age -= 1
      end
      return age.to_s + " months old"
    end
  end
end

