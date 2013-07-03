class SkillLevel < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  validates :years_of_training, numericality: {greater_than_or_equal_to: 0}
  validates :formal, :inclusion => {:in => [true, false]}

  def is_formal?
    if formal == true
      return "Yes"
    else
      return "No"
    end
  end
end
