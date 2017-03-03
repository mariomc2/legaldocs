class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.text :form
      t.text :document

      t.timestamps
    end
  end
end
