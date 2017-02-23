class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :song
      t.string :album
      t.string :genre
      t.belongs_to :bill_board

      t.timestamps
    end
  end
end
