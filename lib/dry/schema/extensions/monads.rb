require 'dry/monads/either'

module Dry
  class Schema
    class Result
      include Dry::Monads::Either::Mixin

      def to_either(options = EMPTY_HASH)
        if success?
          Right(output)
        else
          Left(messages(options))
        end
      end
    end
  end
end
