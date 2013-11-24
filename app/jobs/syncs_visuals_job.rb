class SyncsVisualsJob
  def self.enqueue
    Delayed::Job.enqueue(new)
  end

  def perform
    SyncsVisuals.new(Source.all).sync!
  end
end
