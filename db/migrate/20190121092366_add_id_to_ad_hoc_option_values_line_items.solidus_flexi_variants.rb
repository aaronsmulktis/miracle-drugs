# This migration comes from solidus_flexi_variants (originally 20111012204756)
class AddIdToAdHocOptionValuesLineItems < SolidusSupport::Migration[4.2]
  def self.up
    drop_table :ad_hoc_option_values_line_items

    create_table :ad_hoc_option_values_line_items do |t|
      t.integer :line_item_id
      t.integer :ad_hoc_option_value_id
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :ad_hoc_option_values_line_items

    create_table :ad_hoc_option_values_line_items, id: false do |t|
      t.integer :line_item_id
      t.integer :ad_hoc_option_value_id
      t.timestamps null: false
    end
  end
end
