class CreateServiceActivities < ActiveRecord::Migration
  def up
    create_table :service_activities do |t|
      t.timestamps
    end
  end

  def down
    drop_table :service_activities
  end
end
