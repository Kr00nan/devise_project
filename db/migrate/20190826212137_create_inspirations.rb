class CreateInspirations < ActiveRecord::Migration[6.0]
  def change
    create_table :inspirations do |t|
      t.string :type
      t.text :body
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
