class AddPictureToSurvivors < ActiveRecord::Migration
  def change
    add_column :survivors, :picture, :string
  end
end
