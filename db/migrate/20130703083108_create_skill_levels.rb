class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.integer :skill_id
      t.integer :user_id
      t.integer :years_of_training
      t.boolean :formal
    end
  end
end
