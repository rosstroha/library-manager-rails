class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :name

      t.timestamps
    end

    add_reference :libraries, :users
  end
end
