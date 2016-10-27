class AddSchoolToSubmission < ActiveRecord::Migration[5.0]
  def change
  	add_column :submissions,:school,:string
  end
end
