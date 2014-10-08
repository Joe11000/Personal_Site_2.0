module Blog::EntriesHelper

  def reformat_date(date_time)
    date_time.strftime("%a %m/%d/%y")
  end

  def reformat_date_time(date_time)
    date_time.strftime("%a %I:%M%P %m/%d/%y")
  end

end

