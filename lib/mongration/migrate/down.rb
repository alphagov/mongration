module Mongration
  module Migrate

    # @private
    class Down < Direction

      private

      def migrate(file)
        file.down
      end

      def persist(file)
        Migration.destroy_by_file_name(file.file_name)
      end

      def before_text
        'reverting'
      end

      def after_text
        'reverted'
      end
    end
  end
end
