require_relative '../workflows/hello_world_workflow'
require_relative '../activities/hello_world_activity'

class ParentWorkflow < Temporal::Workflow
  def execute
    HelloWorldWorkflow.execute!
    HelloWorldActivity.execute!('Bob')

    return
  end
end
