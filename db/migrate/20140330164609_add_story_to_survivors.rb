class AddStoryToSurvivors < ActiveRecord::Migration
  def change
    add_column :survivors, :excerpt, :text
    add_column :survivors, :story, :text
  end
end
