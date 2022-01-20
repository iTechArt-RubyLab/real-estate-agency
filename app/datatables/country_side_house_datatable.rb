class CountrySideHouseDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :country_side_house_path, :edit_country_side_house_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      title: { source: 'Lot.title', cond: :like, searchable: true },
      description: { source: 'Lot.description', cond: :like, searchable: true },
      price: { source: 'Lot.price', cond: :like, searchable: true },
      deal_type: { source: 'DealType.name', cond: :like, searchable: true },
      city: { source: 'City.name', cond: :like, searchable: true },
      district: { source: 'District.name', cond: :like, searchable: true },
      street: { source: 'Street.name', cond: :like, searchable: true },
      building: { source: 'Address.building', cond: :like, searchable: true },
      address_description: { source: 'Address.description', cond: :like, searchable: true },
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
        title: record.lot.title,
        description: record.lot.description,
        price: record.lot.price,
        deal_type: record.lot.deal_type.name,
        city: record.lot.address.street.district.city.name,
        district: record.lot.address.street.district.name,
        street: record.lot.address.street.name,
        building: record.lot.address.building,
        address_description: record.lot.address.description,
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
    CountrySideHouse.includes(:country_side_house_kind, :ready_state, :wall_material, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
  end
end
