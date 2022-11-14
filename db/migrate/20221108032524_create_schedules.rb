class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :all_day
      t.date :update_date
      t.string :confirm
      t.string :hensyu
      t.string :sakujo

      t.timestamps
    end
  end
end
