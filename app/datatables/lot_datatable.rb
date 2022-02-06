class LotDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :flat_path, :edit_flat_path

  def initialize(params, opts = {})
    @lots = opts[:lots]
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      title: { source: 'Lot.title', cond: :like, searchable: true },
      description: { source: 'Lot.description', cond: :like, searchable: true },
      price: { source: 'Lot.price', cond: :like, searchable: true },
      state: { source: 'Lot.state', cond: :like, searchable: true },
      deal_type_id: { source: 'DealType.name', cond: :like, searchable: true },
      city: { source: 'City.name', cond: :like, searchable: true },
      district: { source: 'District.name', cond: :like, searchable: true },
      street: { source: 'Street.name', cond: :like, searchable: true },
      building: { source: 'Address.building', cond: :like, searchable: true },
      address_description: { source: 'Address.description', cond: :like, searchable: true },
      lotable_type: { source: 'Lot.lotable_type', cond: :like, searchable: true },
      asigner: { source: 'User.first_name', cond: :like, searchable: true },
      asignee: { source: 'User.first_name', cond: :like, searchable: true },
      client: { source: 'User.first_name', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        title: record.title,
        description: record.description,
        price: record.price,
        state: record.state,
        deal_type_id: record.deal_type.name,
        city: record.address.street.district.city.name,
        district: record.address.street.district.name,
        street: record.address.street.name,
        building: record.address.building,
        address_description: record.address.description,
        lotable_type: record.lotable_type,
        asigner: record&.asigner&.first_name,
        asignee: record&.asignee&.first_name,
        client: record&.client&.first_name,
        actions: link_to('Show', record.lotable_type.split(/(?=[A-Z])/).join('_').downcase + "s/#{record.lotable.id}")
          .concat(' | ')
          .concat(link_to('Edit', record.lotable_type.split(/(?=[A-Z])/).join('_').downcase + "s/#{record.lotable.id}/edit"))
          .concat(' | ')
          .concat(link_to('Destroy', record.lotable_type.split(/(?=[A-Z])/).join('_').downcase + "s/#{record.lotable.id}", method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @lots
  end
end
