class AddWebfileToAlchemyAttachment < ActiveRecord::Migration
  def change
    add_column :alchemy_attachments, :webfile, :string
  end
end
