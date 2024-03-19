class Status
  attr_accessor :status

  def self.for(status_string)
    case status_string
      when "done" then DoneStatus.new
      when "started" then WorkStarted.new
      when "defined" then DefinedStatus.new
    end
  end

  def done? = false
  
  def chatty_string = raise NotImplementedError
end

class DoneStatus < Status
  def to_s = "done"
  
  def done? = true

  def chatty_string = "Work is done."
end

class WorkStarted < Status
  def to_s = "started"
  
  def chatty_string = "Work is started but currently incomplete."
end

class DefinedStatus < Status
  def to_s = "defined"
  
  def chatty_string = "I have not even started."
end

task = Status.new
task.status = "defined"
puts Status.for(task.status).chatty_string
