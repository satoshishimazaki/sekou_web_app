class ScoutChannel < ApplicationCable::Channel
  def subscribed
     stream_from "scout_message_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'scout_message_channel' ,message: data['message']
  end
end
