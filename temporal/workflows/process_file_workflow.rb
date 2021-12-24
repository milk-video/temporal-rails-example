require_relative '../activities/generate_file_activity'
require_relative '../activities/upload_file_activity'
require_relative '../activities/process_file_activity'

class ProcessFileWorkflow < Temporal::Workflow
  task_queue 'file-processing'

  def execute
    local_directory = File.expand_path('/Users/leonardbogdonoff/Spaceship/milk-video/milk-spaceship/temporal-ruby/examples/file-examples/source/').to_s
    remote_directory = File.expand_path('/Users/leonardbogdonoff/Spaceship/milk-video/milk-spaceship/temporal-ruby/examples/file-examples/remote/').to_s

    file_path = GenerateFileActivity.execute!(local_directory)
    remote_path = UploadFileActivity.execute!(local_path: file_path, remote_path: remote_directory)
    result = ProcessFileActivity.execute(remote_path)

    result.get

    raise 'Unable to upload a file' unless result.ready?
  end
end
