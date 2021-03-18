class CreateCthulhus < ActiveRecord::Migration[6.0]
  def change
    create_table :cthulhus do |t|

      t.timestamps
    end
  end
end
