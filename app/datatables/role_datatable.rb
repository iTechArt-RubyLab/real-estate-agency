class RoleDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :role_path, :edit_role_path

  def initialize(params, opts = {})
    @roles = opts[:roles]
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      name: { source: 'Role.name', cond: :like, searchable: true },
      can_read_lot: { source: 'Role.can_read_lot', cond: :like, searchable: false },
      can_edit_lot: { source: 'Role.can_edit_lot', cond: :like, searchable: false },
      can_asign: { source: 'Role.can_asign', cond: :like, searchable: false },
      can_read_dictionary: { source: 'Role.can_read_dictionary', cond: :like, searchable: false },
      can_edit_dictionary: { source: 'Role.can_edit_dictionary', cond: :like, searchable: false },
      can_give_permission: { source: 'Role.can_give_permission', cond: :like, searchable: false },
      can_work_with_all_property_types: { source: 'Role.can_work_with_all_property_types', cond: :like, searchable: false },
      can_create_role: { source: 'Role.can_create_role', cond: :like, searchable: false },
      can_approve_realtor: { source: 'Role.can_approve_realtor', cond: :like, searchable: false },
      can_freeze_user: { source: 'Role.can_freeze_user', cond: :like, searchable: false },
      actions: { source: 'data.actions', searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.name,
        can_read_lot: record.can_read_lot,
        can_edit_lot: record.can_edit_lot,
        can_asign: record.can_asign,
        can_read_dictionary: record.can_read_dictionary,
        can_edit_dictionary: record.can_edit_dictionary,
        can_give_permission: record.can_give_permission,
        can_work_with_all_property_types: record.can_work_with_all_property_types,
        can_create_role: record.can_create_role,
        can_approve_realtor: record.can_approve_realtor,
        can_freeze_user: record.can_freeze_user,
        actions: link_to('Show', record)
          .concat(' | ')
          .concat(link_to('Edit', edit_role_path(record)))
          .concat(' | ')
          .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
      }
    end
  end

  def get_raw_records
    @roles = Role.all
  end
end
