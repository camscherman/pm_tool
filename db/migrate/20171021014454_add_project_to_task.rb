class AddProjectToTask < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :project, foreign_key: true, index: true
  end
end
