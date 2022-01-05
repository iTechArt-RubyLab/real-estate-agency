class CountrySideHouseDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :country_side_house_path, :edit_country_side_house_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      country_side_house_kind_id: { source: 'CountrySideHouseKind.name', cond: :like, searchable: true },
      ready_state_id: { source: 'ReadyState.name', cond: :like, searchable: true },
      floors_count: { source: 'CountrySideHouse.floors_count', cond: :like, searchable: true },
      land_area: { source: 'CountrySideHouse.land_area', cond: :like, searchable: true },
      total_area: { source: 'CountrySideHouse.total_area', cond: :like, searchable: true },
      year_of_construction: { source: 'CountrySideHouse.year_of_construction', cond: :like, searchable: true },
      wall_material_id: { source: 'WallMaterial.name', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        country_side_house_kind_id: record.country_side_house_kind.name,
        ready_state_id: record.ready_state.name,
        floors_count: record.floors_count,
        land_area: record.land_area.round(2),
        total_area: record.total_area.round(2),
        year_of_construction: record.year_of_construction,
        wall_material_id: record.wall_material.name,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_country_side_house_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    CountrySideHouse.joins(:country_side_house_kind, :ready_state, :wall_material)
  end
end
