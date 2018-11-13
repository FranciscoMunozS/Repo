class AddStatusToArchives < ActiveRecord::Migration[5.2]
  def change
    add_column :archives, :status, :boolean
  end
end
