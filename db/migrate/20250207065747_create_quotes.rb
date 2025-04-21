class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.date :publication_year, null: false
      t.string :quotecontent, null: false
      t.string :comment, null: false
      t.boolean :ispublic, default: true
      t.references :user, null: false, foreign_key: true
      t.references :philosopher, null: false, foreign_key: true    

      t.timestamps
    end
  end
end
