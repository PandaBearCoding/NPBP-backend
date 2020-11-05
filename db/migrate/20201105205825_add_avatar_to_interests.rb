class AddAvatarToInterests < ActiveRecord::Migration[6.0]
  def change
    add_column :interests, :avatar, :string
  end
end
