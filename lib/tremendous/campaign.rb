module Tremendous
  class Campaign
    def self.list(filters={})
      Tremendous::Request.get(
        'campaigns',
        query: filters,
        format: 'json'
      )[:campaigns]
    end
  end
end
