class ReadyStateDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :ready_state_path, :edit_ready_state_path

  def initialize(params, opts = {})
    @ready_states = opts[:ready_states]
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'ReadyState.name', cond: :like, searchable: true },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_ready_state_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @ready_states
  end
end
