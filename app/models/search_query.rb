class SearchQuery

  attr_reader :table_name, :options

  def initialize(table_name, options)
    @table_name = table_name
    @options = options
  end

  def call
    debugger
    @table_name.constantize.where()
  end
end
