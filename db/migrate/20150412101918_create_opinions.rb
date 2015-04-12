class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.boolean :status, default: false
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :opinions, :users
  end
end
