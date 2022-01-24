class FlatDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :flat_path, :edit_flat_path

  def initialize(params, opts = {})
    @flats = opts[:flats]
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
      renovation_id: { source: 'Renovation.name', cond: :like, searchable: true },
      rooms_count: { source: 'Flat.rooms_count', cond: :like, searchable: true },
      floor: { source: 'Flat.floor', cond: :like, searchable: true },
      wall_material_id: { source: 'WallMaterial.name', cond: :like, searchable: true },
      kitchen_area: { source: 'Flat.kitchen_area', cond: :like, searchable: true },
      living_area: { source: 'Flat.living_area', cond: :like, searchable: true },
      total_area: { source: 'Flat.total_area', cond: :like, searchable: true },
      celling_height: { source: 'Flat.celling_height', cond: :like, searchable: true },
      year_of_construction: { source: 'Flat.year_of_construction', cond: :like, searchable: true },
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
        renovation_id: record.renovation.name,
        rooms_count: record.rooms_count,
        floor: record.floor,
        wall_material_id: record.wall_material.name,
        kitchen_area: record.kitchen_area.round(2),
        living_area: record.living_area.round(2),
        total_area: record.total_area.round(2),
        celling_height: record.celling_height.round(2),
        year_of_construction: record.year_of_construction,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_flat_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @flats
  end
end
