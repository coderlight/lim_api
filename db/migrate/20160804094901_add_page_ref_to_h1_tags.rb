class AddPageRefToH1Tags < ActiveRecord::Migration
  def change
    add_reference :h1_tags, :page, index: true, foreign_key: true
  end
end
