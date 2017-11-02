class CreatePicture1s < ActiveRecord::Migration[5.1]
  def change
    create_table :picture1s do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :score, foreign_key: true

      t.timestamps
    end
  end
end
