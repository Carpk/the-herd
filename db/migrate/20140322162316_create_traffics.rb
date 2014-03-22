class CreateTraffics < ActiveRecord::Migration
  def up
  	create_table :traffics do |t|
  		t.references :place
      t.integer    :wait
      
      t.timestamps
  	end
  end

  def down
  end
end
