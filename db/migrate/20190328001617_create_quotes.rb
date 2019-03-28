class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :quote
      t.string :author
      t.string :category
      t.string :background

      t.timestamps
    end
  end
end
