class User < ApplicationRecord
  enum :gender, { male: 0, female: 1 }

  def self.index_search(params = {})
    search(params[:email]).with_gender(params[:gender])
  end

  def self.search(sword)
    return all if sword.blank?
    where("email =?", sword)
  end

  def self.with_gender(gender)
     return all if gender.present?
    where("gender =?", User.genders[gender])
  end
end
