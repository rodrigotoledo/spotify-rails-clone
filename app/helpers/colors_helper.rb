module ColorsHelper
  def header_bg
    color = [
      'indigo', 'blue', 'green', 'red', 'purple', 'yellow', 'pink'
    ].sample
    "from-#{color}-500"
  end
end
