module ApplicationHelper

  def formatted_date(date)
    date.strftime('%d/%b/%Y    %H:%M:%S')
  end

end
