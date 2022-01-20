class AsigneeValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:asignee, 'Asignee have to be realtor') if record.asignee.profilable_type == 'ClientProfile'
  end
end
