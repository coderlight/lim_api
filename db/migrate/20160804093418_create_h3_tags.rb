class CreateH3Tags < ActiveRecord::Migration
  def change
    create_table :h3_tags do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
