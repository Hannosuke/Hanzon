class AddRecommendFlagToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :recommend_flag, :boolean, default: false
  end
end
