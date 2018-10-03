module SamplesHelper
  def format_last_modified(sample)
    year = sample.updated_at.year
    month = sample.updated_at.month
    day = sample.updated_at.day
    hour = sample.updated_at.hour
    min = sample.updated_at.min
    sec = sample.updated_at.sec
    Time.zone.parse("#{year}-#{month}-#{day} #{hour}:#{min}:#{sec} +0000").strftime("%m-%d-%Y at %I:%M%p")
  end
end
