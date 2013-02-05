class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :title
      t.text :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
