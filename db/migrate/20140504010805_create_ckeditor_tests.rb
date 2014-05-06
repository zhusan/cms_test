class CreateCkeditorTests < ActiveRecord::Migration
  def change
    create_table :ckeditor_tests do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
