class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :inspirations, :type, :source
  end
end
