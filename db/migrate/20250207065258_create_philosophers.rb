class CreatePhilosophers < ActiveRecord::Migration[8.0]
  def change
    create_table :philosophers do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.date :b_year, null: false
      t.date :d_year, null: false
      t.string :bio, null: false

      t.timestamps
    end
  end
end
