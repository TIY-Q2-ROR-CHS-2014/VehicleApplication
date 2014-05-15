class AddWorkflowStateToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :workflow_state, :string
  end
end
