namespace :one_time_data_creation do
	desc "Creating user roles for the application"
	task :create_buttons_for_different_controllers => :environment do
		connection = ActiveRecord::Base.connection()
		connection.execute("SELECT setval('public.ruby_elements_id_seq', (select max(id) from public.ruby_elements), true)")
		# connection.execute("SELECT setval('public.ruby_element_reltns_id_seq', (select max(id) from public.ruby_element_reltns), true)")
		type = 6351
		# Dir[Rails.root.join('app/controllers/*_controller.rb')].map { |path| (path.match(/(\w+)_controller.rb/); $1).camelize+"Controller" }.each do |con_name|
		# 	RubyElement.create(element_name:con_name,element_title:"New", element_type: type)
		# 	RubyElement.create(element_name:con_name,element_title:"Edit", element_type: type)
		# 	RubyElement.create(element_name:con_name,element_title:"Delete", element_type: type)
		# end


		RubyElement.create(element_name:"ActionPlansController",element_title:"Close", element_type: type)
		RubyElement.create(element_name:"ActionPlanDetailsController",element_title:"Add Action", element_type: type)
		RubyElement.create(element_name:"ActionPlanDetailsController",element_title:"Add Service", element_type: type)
		RubyElement.create(element_name:"ActivityHoursController",element_title:"Add Week", element_type: type)
		RubyElement.create(element_name:"AssessmentBarriersController",element_title:"Complete Assessment", element_type: type)
		RubyElement.create(element_name:"ClientApplicationsController",element_title:"Complete Application", element_type: type)
		RubyElement.create(element_name:"ClientAssessmentAnswersController",element_title:"Review Assessment", element_type: type)
		RubyElement.create(element_name:"ClientAssessmentsController",element_title:"Complete", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"FC Add Document", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"Upload", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"FC Edit", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"EC Delete", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"FC Upload", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"OPUD Edit", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"OPUD Delete", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"OPUD Upload", element_type: type)
		RubyElement.create(element_name:"ClientDocVerficationsController",element_title:"PUD Add Document", element_type: type)
		RubyElement.create(element_name:"IncomesController",element_title:"Share", element_type: type)
		RubyElement.create(element_name:"ProgramUnitsController",element_title:"Start", element_type: type)
		RubyElement.create(element_name:"ProgramUnitsController",element_title:"Assign Case Manager", element_type: type)
		RubyElement.create(element_name:"ProgramUnitRepresentativesController",element_title:"Deactivate", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Dispose", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Retain", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Eligibility Determination", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Complete Program Unit", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Submit Payment", element_type: type)
		RubyElement.create(element_name:"ProgramWizardsController",element_title:"Mark Active", element_type: type)
		RubyElement.create(element_name:"ProvidersController",element_title:"Add Branch Office", element_type: type)
		RubyElement.create(element_name:"ProvidersController",element_title:"Edit Branch Office", element_type: type)
		RubyElement.create(element_name:"ProviderAgreementsController",element_title:"Approve", element_type: type)
		RubyElement.create(element_name:"ProviderAgreementsController",element_title:"Terminate", element_type: type)
		RubyElement.create(element_name:"ProviderAgreementsController",element_title:"Print Agreement", element_type: type)
		RubyElement.create(element_name:"ProviderAgreementsController",element_title:"Request For Approval", element_type: type)
		RubyElement.create(element_name:"ProviderAgreementsController",element_title:"Reject", element_type: type)
		RubyElement.create(element_name:"ProviderInvoicesController",element_title:"Authorize", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSAA New", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSAA Edit", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSAA Delete", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSA New", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSA Edit", element_type: type)
		RubyElement.create(element_name:"ProviderServicesController",element_title:"PSA Delete", element_type: type)
		RubyElement.create(element_name:"ResourcesController",element_title:"Share", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"NTSS Edit", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"NTSS Delete", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"Approve Service", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"SASSS NT Approve", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"SASSS T Approve", element_type: type)
		RubyElement.create(element_name:"ServiceAuthorizationsController",element_title:"Program Management", element_type: type)
		RubyElement.create(element_name:"SuplRetroBnsPaymentsController",element_title:"Activate Program Unit", element_type: type)
		RubyElement.create(element_name:"UsersController",element_title:"Reset Password", element_type: type)
		RubyElement.create(element_name:"UsersController",element_title:"Change Password", element_type: type)
		RubyElement.create(element_name:"WorkTasksController",element_title:"Work on the Task", element_type: type)
		RubyElement.create(element_name:"ExpensesController",element_title:"Share", element_type: type)
		RubyElement.create(element_name:"ResourcesController",element_title:"Share Delete", element_type: type)
		RubyElement.create(element_name:"ApplicationScreeningsController",element_title:"Add Document", element_type: type)
		RubyElement.create(element_name:"InstatePaymentsController",element_title:"PUISP Edit", element_type: type)
		RubyElement.create(element_name:"ProgramUnitActionsController",element_title:"Action", element_type: type)
		# RubyElement.create(element_name:,element_title:"", element_type: type)
	end
end