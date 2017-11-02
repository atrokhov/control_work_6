class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :score, foreign_key: true
      t.text :text
      t.references :picture, foreign_key: true

      t.timestamps
    end
  end
end
