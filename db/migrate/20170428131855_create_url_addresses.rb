class CreateUrlAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :url_addresses do |t|
      t.string :url

      t.timestamps
    end
  end
end
