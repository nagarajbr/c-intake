namespace :populate_sys_param89 do
	desc "notes types"
	task :notes_type => :environment do

		user_object = User.find(1)
    	AuditModule.set_current_user=(user_object)

		SystemParam.create(system_param_categories_id:26,key:"6743",value:"30",description:"Employment Plan")

	end
end