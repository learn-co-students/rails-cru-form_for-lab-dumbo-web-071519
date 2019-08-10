class ChangeSongColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :genre, :genre_id
  end
end
