class AddRankingToCms < ActiveRecord::Migration[5.2]
  def change
    add_column :cms, :ranking, :integer
  end
end
