class AddVenueDateBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :event_time, :datetime
    add_column :boards, :venue, :string
  end
end
