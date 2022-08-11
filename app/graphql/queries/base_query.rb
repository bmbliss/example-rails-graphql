module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    def execute(error_code, error_message, context = {})
      begin
        yield
      rescue StandardError => e
        Honeybadger.notify("#{e.class.name} Queries::BaseQuery#execute",
                           context: {
                             description: 'failed to execute query',
                             error: e
                           })
        {
          error_code: error_code,
          error_message: error_message
        }
      end
    end
  end
end
