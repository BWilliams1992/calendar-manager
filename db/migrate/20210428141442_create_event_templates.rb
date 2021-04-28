class CreateEventTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :event_templates do |t|

      t.timestamps
    end
  end
end
