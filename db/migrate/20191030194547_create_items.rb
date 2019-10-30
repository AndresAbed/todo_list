class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.boolean :status, default: false
      t.string :description
      t.integer :list_id, null: false

      t.timestamps
    end
  end
end
