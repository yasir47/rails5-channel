# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class NewChannel < ApplicationCable::Channel
  def subscribed
     stream_from "new_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def user
  end

  def speak(data)
    #take data in form of object
    User.create!(name: data['message'] , text: data['test'])
  end
end
