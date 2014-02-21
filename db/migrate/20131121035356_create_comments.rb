class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.references :parent, index: true

      t.timestamps
    end
  end
end
