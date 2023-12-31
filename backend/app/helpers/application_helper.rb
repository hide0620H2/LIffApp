module ApplicationHelper
  def deadline_options_for_select
    ReservationSchedule::DEADLINE_OPTIONS.map do |m|
      if m < 60
        ["#{m} 分前", m]
      else
        ["#{m / 60} 時間前", m]
      end
    end
  end
end
