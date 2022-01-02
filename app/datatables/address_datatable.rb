class AddressDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :address_path, :edit_address_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      street_id: { source: 'Street.name', cond: :like, searchable: true },
      building: { source: 'Address.building', cond: :like, searchable: true },
      description: { source: 'Address.description', cond: :like, searchable: false },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        street_id: record.street.name,
        building: record.building,
        description: record.description,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_address_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    Address.joins(:street)
  end
end
