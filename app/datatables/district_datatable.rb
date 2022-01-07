class DistrictDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :city_district_path, :edit_city_district_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    @params = params
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'District.name', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        actions: link_to('Show', city_district_path(record, city_id: @params[:city_id]))
          .concat(' | ')
          .concat(link_to('Edit', edit_city_district_path(record, city_id: @params[:city_id])))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    District.preload(:city).where(city_id: @params[:city_id])
  end
end
