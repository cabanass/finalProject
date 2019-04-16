class CreateSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsors do |t|
      t.string :company
      t.string :logo

      t.timestamps
    end
  end
end
