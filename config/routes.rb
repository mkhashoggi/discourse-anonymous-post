# frozen_string_literal: true

DiscourseAnonymousPost::Engine.routes.draw do
  put "/annonymous_post" => "post#post"
end
