require_relative '../activities/sleep_activity'
require_relative '../activities/hello_world_activity'

class CancellingTimerWorkflow < Temporal::Workflow
  def execute(activity_timeout, timer_timeout)
    timer = workflow.start_timer(timer_timeout)
    activity = SleepActivity.execute(activity_timeout)
    timer_fired = false

    timer.done do
      timer_fired = true
      HelloWorldActivity.execute!('extra')
    end

    activity.get

    timer.cancel unless timer_fired

    return
  end
end
