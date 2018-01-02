# utf-8
module Filterable
  extend ActiveSupport::Concern
  # utf-8
  module ClassMethods
    def filter(params)
      results = unscoped
      params.each do |key, value|
        results = results.public_send(key, value) if value.present?
      end
    end
  end
end
