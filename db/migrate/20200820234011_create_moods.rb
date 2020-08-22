class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.references :user, null: false, foreign_key: true
      t.string :comment
      t.string :mood

      t.timestamps
    end
  end
end
