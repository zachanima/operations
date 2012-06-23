class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :type_id
      t.float :value

      t.timestamps
    end
  end
end
