require "senty/version"
require "senty/client"

module Senty
  class << self

    def new
      @client ||= Senty::Client.new
    end
  end
end
