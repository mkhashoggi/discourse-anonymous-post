# frozen_string_literal: true

class DiscourseAnonymousPost::AnonymousPostMailer < ActionMailer::Base
  default to: "ask@l.gulf-can.com"
  # include Email::BuildEmailHelper

  def send_email(from_address, title, post)

    mail(
      from: from_address,
      # to: "ask@l.gulf-can.com",
      subject: title,
      body: post
    )
    # build_email(
    #   to_address,
    #   template: 'admin_confirmation_mailer',
    #   target_email: target_email,
    #   target_username: target_username,
    #   admin_confirm_url: confirm_admin_url(token: token, host: Discourse.base_url)
    # )
  end
end
