class CreateUsersCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :users_courses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
