class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_or_last_name
  validate :valid_genders
  validate :not_male_sue

  def first_or_last_name
    if !first_name and !last_name
      errors.add(:first_name, "at least the first name or last name must be completed")
    end
  end

  def valid_genders
    if gender != 'male' && gender != 'female'
      errors.add(:gender, "must be male or female")
    end
  end

  def not_male_sue
    if gender == 'male' && first_name == 'Sue'
      errors.add(:first_name, "males can't have first name sue")
    end
  end
end
