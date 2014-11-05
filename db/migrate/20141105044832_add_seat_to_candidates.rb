class AddSeatToCandidates < ActiveRecord::Migration
  def change
    add_reference :candidates, :seat, index: true
  end
end
