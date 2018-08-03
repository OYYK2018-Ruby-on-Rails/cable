class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from("web_notifications_#{current_user.id}_channel")
    # WebNotificationsChannel.broadcast_to(current_user message: 'All the news fit to print')
    # ActionCable.server.broadcast ‘web_notifications_channel’, message: ‘<p>Hello World!</p>’
    stream_from 'web_notifications_channel' # public channel
    stream_for current_user # user channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
