class CreateH1Tags < ActiveRecord::Migration
  def change
    create_table :h1_tags do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
