class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 50
      t.string :username, limit: 50
      t.text :about, limit: 300

      t.timestamps
    end
  end
end
