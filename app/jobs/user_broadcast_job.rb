class UserBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'new_channel' , message: render_message(message)

    # Do something later
  end

  private

  def render_message(message)
    ApplicationController.renderer.render(partial: 'users/user',locals: {user: message})
  end

end
