class Comment < ApplicationRecord
  after_create_commit { create_event }

  private

  def create_event
    Event.create message: "A new comment has been created"
  end
end
