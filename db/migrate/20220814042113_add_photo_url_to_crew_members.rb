class AddPhotoUrlToCrewMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :crew_members, :photo_url, :string
  end
end
