module EnterCounter

  private

  def inc_counter
    @counter = session[:counter].nil? ? 1 : session[:counter] + 1
    session[:counter] = @counter
  end
end