helpers do

  def fan_button(id)
    <<-HTML
      <form method="POST" action="/users/#{id}">
        <input type="hidden" name="_method" value="PUT" />
        <input type="submit" value="FAN!" />
      </form>
    HTML
  end

  def woot_time(woot)
    woot.created_at.strftime("Wooted on %m/%d/%Y at %I:%M%p")
  end

end
