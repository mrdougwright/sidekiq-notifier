require "uri"
require "sidekiq"
require "net/http"

module Sidekiq
  module ExceptionHandler
    class Notifier < Logger
      def handle_exception(exception, context_hash={})
        print "Testing this hook...."
        super(exception, context_hash)
      end
    end
  end
end


# NOTES:
# https://github.com/mperham/sidekiq/wiki/Error-Handling
# http://guides.rubygems.org/make-your-own-gem/#introduction
