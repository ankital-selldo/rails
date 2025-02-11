module CommentsHelper
  def show_curr_time
    time = Time.new
    time.strftime("%I:%M %p") 
  end
end
