helpers do

  def fan_button(id)
    <<-HTML
      <form method="POST" action="/users/#{id}">
        <input type="hidden" name="_method" value="PUT" />
        <input type="submit" value="FAN!" />
      </form>
    HTML
  end

end
