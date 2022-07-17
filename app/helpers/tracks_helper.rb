module TracksHelper
  def duration(duration_ms)
    Time.at(duration_ms).strftime('%H:%M')
  end
end
