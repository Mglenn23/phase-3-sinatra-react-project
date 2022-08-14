class CreateType < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :type_name
      t.string :type_img
      t.timestamps
    end
  end
end
