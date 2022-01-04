class CountrySideHouseKindDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :country_side_house_kind_path, :edit_country_side_house_kind_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'CountrySideHouseKind.name', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_country_side_house_kind_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    CountrySideHouseKind.all
  end
end
