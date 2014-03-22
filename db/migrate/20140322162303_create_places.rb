class CreatePlaces < ActiveRecord::Migration
  def up
  	create_table :places do |t|
  		t.string :name

  		t.timestamps
    end
  end

  def down
  end
end
