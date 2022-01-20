class AsigneeValidator < ActiveModel::Validator
  def validate(record)
    if record.asignee.profilable_type == 'ClientProfile'
      record.errors.add(:asignee, 'Asignee have to be realtor')
    end
  end
end