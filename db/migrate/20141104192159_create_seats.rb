class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :office_name
      t.string :district

      t.timestamps
    end
  end
end
