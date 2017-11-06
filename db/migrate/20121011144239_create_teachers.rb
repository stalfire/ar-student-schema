require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration[4.2]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t|

      # add columns that you would need for this table
      t.string :teacher_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
