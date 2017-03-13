class NeomakeRspecFormatter
  RSpec::Core::Formatters.register self, :example_failed

  def initialize(output)
    @output = output
  end

  def close(notification)
    @output << "\n"
  end


  def example_failed(notification)
    @output << "#{File.expand_path(notification.example.location)} F #{notification.exception.message}\n"
  end
end
