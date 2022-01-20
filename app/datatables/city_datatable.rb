class CityDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :city_path, :edit_city_path

  def initialize(params, opts = {})
    @cities = opts[:cities]
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'City.name', cond: :like, searchable: true },
      locality_size: { source: 'City.locality_size', cond: :like, searchable: true },
      region: { source: 'City.region', cond: :like, searchable: true },
      description: { source: 'City.description', cond: :like, searchable: false },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        locality_size: record.locality_size,
        region: record.region,
        description: record.description,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_city_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @cities = City.all
  end
end
