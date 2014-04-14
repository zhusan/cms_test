class AddWebfileToAlchemyPicture < ActiveRecord::Migration
  def change
    add_column :alchemy_pictures, :webfile, :string
  end
end
