class AddColorToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :color, :string
  end
end
