class UserDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def view_columns
    @view_columns ||= {
      email: { source: 'User.email', cond: :like, searchable: true },
      city_id: { source: 'City.name', cond: :like, searchable: true },
      first_name: { source: 'User.first_name', cond: :like, searchable: true },
      last_name: { source: 'User.last_name', cond: :like, searchable: true },
      second_name: { source: 'User.second_name', cond: :like, searchable: true },
      date_of_birth: { source: 'User.date_of_birth', cond: :like, searchable: true },
      gender: { source: 'User.gender', cond: :like, searchable: true },
      role_id: { source: 'Role.name', cond: :like, searchable: true },
      profilable_type: { source: 'User.profilable_type', cond: :like, searchable: true },
      last_sign_in_at: { source: 'User.last_sign_in_at', cond: :like, searchable: false },
      sign_in_count: { source: 'User.sign_in_count', cond: :like, searchable: false },
      last_sign_in_ip: { source: 'User.last_sign_in_ip', cond: :like, searchable: false }
    }
  end

  def data
    records.map do |record|
      {
        email: record.email,
        city_id: record.city&.name,
        first_name: record.first_name,
        last_name: record.last_name,
        second_name: record.second_name,
        date_of_birth: record.date_of_birth,
        gender: record.gender,
        role_id: record.role&.name,
        profilable_type: record.profilable_type,
        last_sign_in_at: record.last_sign_in_at,
        sign_in_count: record.sign_in_count,
        last_sign_in_ip: record.last_sign_in_ip
      }
    end
  end

  def get_raw_records
    User.left_joins(:city, :role)
  end
end
