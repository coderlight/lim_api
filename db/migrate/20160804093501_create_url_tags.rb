class CreateUrlTags < ActiveRecord::Migration
  def change
    create_table :url_tags do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
