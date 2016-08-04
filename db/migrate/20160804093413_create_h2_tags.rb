class CreateH2Tags < ActiveRecord::Migration
  def change
    create_table :h2_tags do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
