class CountryDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :country_path, :edit_country_path

  def initialize(params, opts = {})
    @countries = opts[:countries]
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'Country.name', cond: :like, searchable: true },
      phone_code: { source: 'Country.phone_code', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        phone_code: record.phone_code,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_country_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @countries
  end
end
