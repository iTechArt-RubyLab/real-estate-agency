class CommercialPremiseDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :commercial_premise_path, :edit_commercial_premise_path

  def initialize(params, opts = {})
    @commercial_premises = opts[:commercial_premises]
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
      commercial_premises_kind_id: { source: 'CommercialPremisesKind.name', cond: :like, searchable: true },
      area: { source: 'CommercialPremise.area', cond: :like, searchable: true },
      floor: { source: 'CommercialPremise.floor', cond: :like, searchable: true },
      number_of_premises: { source: 'CommercialPremise.number_of_premises', cond: :like, searchable: true },
      plot_of_land: { source: 'CommercialPremise.plot_of_land', cond: :like, searchable: true },
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
        commercial_premises_kind_id: record.commercial_premises_kind.name,
        area: record.area.round(2),
        floor: record.floor,
        number_of_premises: record.number_of_premises,
        plot_of_land: record.plot_of_land,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_commercial_premise_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @commercial_premises
  end
end
