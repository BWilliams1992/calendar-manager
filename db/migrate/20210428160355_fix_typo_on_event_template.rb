class FixTypoOnEventTemplate < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_templates, :avaliablility
    add_column :event_templates, :avaliability, :string
  end
end
