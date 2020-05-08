module SheetsHelper
  def uk_date(date)
    date.to_formatted_s(:rfc822) unless date.nil?
  end
  def new_build_text(build)
    build ? "New wheel" : "Repair, rebuild"
  end
end
