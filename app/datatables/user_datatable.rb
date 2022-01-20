class UserDatatable < AjaxDatatablesRails::ActiveRecord
    extend Forwardable
  
    def initialize(params, opts = {})
      @view = opts[:view_context]
      super
    end
  
    def view_columns
      @view_columns ||= {
        email: { source: 'User.email', cond: :like, searchable: true },
        city: { source: 'City.name', cond: :like, searchable: true },
        first_name: { source: 'User.first_name', cond: :like, searchable: true },
        last_name: { source: 'User.last_name', cond: :like, searchable: true },
        second_name: { source: 'User.second_name', cond: :like, searchable: true },
        date_of_birth: { source: 'User.date_of_birth', cond: :like, searchable: true },
        gender: { source: 'User.gender', cond: :like, searchable: true },
        role: { source: 'Role.name', cond: :like, searchable: true },
        profilable_type: { source: 'User.profilable_type', cond: :like, searchable: true },
        actions: { source: 'data.actions', searchable: false, orderable: false }
      }
    end
  
    def data
      records.map do |record|
        {
          email: record.email,
          city: record.city.name,
          first_name: record.first_name,
          last_name: record.last_name,
          second_name: record.second_name,
          date_of_birth: record.date_of_birth,
          gender: record.gender,
          role: record.role.name,
          profilable_type: record.profilable_type,
          actions: link_to('Show', record)
            .concat(' | ')
            .concat(link_to('Edit', edit_tag_path(record)))
            .concat(' | ')
            .concat(link_to('Destroy', record, method: :delete, data: { confirm: 'Are you sure?' }))
        }
      end
    end
  
    def get_raw_records
      User.includes(:role, :city)
    end
  end
  
  