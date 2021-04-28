class AddAttributesToEventTemplate < ActiveRecord::Migration[6.0]
  def change
    add_column :event_templates, :length, :float
    add_column :event_templates, :summary, :string
    add_column :event_templates, :location, :string
    add_column :event_templates, :notification, :boolean
    add_column :event_templates, :color, :string
    add_column :event_templates, :avaliablility, :string
  end
end
