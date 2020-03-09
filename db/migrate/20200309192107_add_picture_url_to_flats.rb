class AddPictureUrlToFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :picture_url

      t.timestamps 
  end
end
