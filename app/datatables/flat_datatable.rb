class FlatDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :flat_path, :edit_flat_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
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
    Flat.joins(:renovation, :wall_material)
  end
end
