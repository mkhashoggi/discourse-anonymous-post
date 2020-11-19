# frozen_string_literal: true

module DiscourseAnonymousPost
  class PostController < ApplicationController
    # requires_login
    # before_action :ensure_logged_in, :ensure_assign_allowed

    def post
      from_address = params.require(:from_address)
      title = params.require(:title)
      post = params.require(:post)
      ::AnonymousPostMailer.send_email(from_address, title, post).deliver_now
    end
  end
end
