class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.integer :views
      t.date :submitted_date
      t.date :updated_date

      t.timestamps
    end
  end
end
