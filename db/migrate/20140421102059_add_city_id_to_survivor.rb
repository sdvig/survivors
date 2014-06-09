class AddCityIdToSurvivor < ActiveRecord::Migration
  def change
    add_column :survivors, :city_id, :integer
  end
end
