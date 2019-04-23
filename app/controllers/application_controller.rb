 # encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
end
