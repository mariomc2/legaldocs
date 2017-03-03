class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.string :file_path
      t.text :formdata
      t.text :document
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
