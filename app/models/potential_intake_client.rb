class PotentialIntakeClient < ActiveRecord::Base
	include AuditModule


	before_create :set_create_user_fields
  	before_update :set_update_user_field

  	 def set_create_user_fields
      user_id = AuditModule.get_current_user.uid
      self.created_by = user_id
      self.updated_by = user_id

      self.intake_status ="I"
    end

    def set_update_user_field
      user_id = AuditModule.get_current_user.uid
      self.updated_by = user_id
    end


    def self.get_clients_for_intake_queue()
    	self.where("intake_status = 'I' ").order("created_at DESC")
    end
end