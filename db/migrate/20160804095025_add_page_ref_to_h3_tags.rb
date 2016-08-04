class AddPageRefToH3Tags < ActiveRecord::Migration
  def change
    add_reference :h3_tags, :page, index: true, foreign_key: true
  end
end
