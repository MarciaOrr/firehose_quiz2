module DogsHelper

  def age_string(dob)
    today = Date.today
    age = 0
    age_string = ''
    if dob.year < today.year
      age = today.year - dob.year
      if dob.month > today.month
        age -= 1
      elsif dob.month == today.month && dob.day > today.day
        age -= 1
      end
      return age.to_s + " years old"

    elsif
      age = today.month - dob.month
      if dob.day > today.day
        age -= 1
      end
      return age.to_s + " months old"
    end
  end
end
