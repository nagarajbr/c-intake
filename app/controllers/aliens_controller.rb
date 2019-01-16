class AliensController < AttopAncestorController
	# AUthor : Manoj Patil
	# Date : 07/25/2014
	# Description : Using Reform Gem.
	#  Common Page to capture Client's citizenship and Alien Details.
	#This is a test code
	def show
		#  show client's Citizenship information and ALien information if it is present.
		if session[:CLIENT_ID].present?
		  cl_id = session[:CLIENT_ID]
		  @client = Client.find(cl_id)

		  if @client.citizenship?
		  		# alien_id = @client.alien.id
		  		alien_collection = Alien.where("client_id = ?", @client.id).order("id desc")
		  		@alien = nil
		  		if alien_collection.present?
		  			@alien = alien_collection.first
		  		end
		  		# self.get_notes(arg_entity_type,arg_entity_id,arg_notes_type,arg_reference_id)
				@notes = NotesService.get_notes(6150,session[:CLIENT_ID],6473,session[:CLIENT_ID])
		  end
	  		l_records_per_page = SystemParam.get_pagination_records_per_page
			@notes = @notes.page(params[:page]).per(l_records_per_page) if @notes.present?
		end
	rescue => err
		error_object = CommonUtil.write_to_attop_error_log_table("AliensController","show",err,current_user.uid)
		flash[:alert] = "Error ID: #{error_object.id} - Attempted to access invalid client."
		redirect_to_back
	end


	def new
		@client = Client.find(session[:CLIENT_ID])
		# Manoj 12/02/2015 - called from Household member step
		@menu = nil
		if params[:menu].present?
			@menu = params[:menu]
			if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
				session[:BACK_BUTTON_FROM_CITIZENSHIP] = 'Y'
				set_hoh_data(@client.id)
			end
		end



		# Select Verification document was not getting set .so did this work around.
		@client.sves_type = nil

		@alien = Alien.new
		if @client.citizenship.present?
			if @client.citizenship == 'Y'
				@alien.client_citizenship = 'Y'
			else
				@alien.client_citizenship = 'N'
			end
		else
			@alien.client_citizenship = nil
		end

		# @form = CitizenshipForm.new(client: @client, alien: @alien)

	rescue => err
		error_object = CommonUtil.write_to_attop_error_log_table("AliensController","new",err,current_user.uid)
		flash[:alert] = "Error ID: #{error_object.id} - Attempted to access invalid client."
		redirect_to_back
	end

	def create
		 # fail
		@client = Client.find(session[:CLIENT_ID])
		# Manoj 12/02/2015 - called from Household member step
		@menu = nil
		if params[:menu].present?
			@menu = params[:menu]
			if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
				set_hoh_data(@client.id)
			end
		end

		l_params = alien_params
		# create Alien details for the client
		@alien = Alien.new
		@alien.alien_DOE = l_params[:alien_DOE].to_date if l_params[:alien_DOE].present?
		@alien.country_of_origin = l_params[:country_of_origin] if l_params[:country_of_origin].present?
		@alien.refugee_status = l_params[:refugee_status] if l_params[:refugee_status].present?
		@alien.alien_no = l_params[:alien_no] if l_params[:alien_no].present?
		@alien.client_citizenship = l_params[:client_citizenship] if l_params[:client_citizenship].present?

		@alien.client_id = @client.id

		if @alien.valid?
			@client.citizenship = l_params[:client_citizenship]
			# if l_client_params[:client_citizenship] == "Y"
			if 	l_params[:client_citizenship] == "Y"
				@client.sves_type = l_params[:sves_type]
			else
				@client.sves_type = nil
			end
				ls_return = ClientAlienService.create_citizenship(@client,@alien,params[:notes])
					 if ls_return == "SUCCESS"
						flash[:notice] = "Citizenship information saved"
						# Rails.logger.debug("session[:NAVIGATE_FROM] = #{session[:NAVIGATE_FROM]}")
					    	if session[:NAVIGATE_FROM].blank?
					    		if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
					    			if @client.dob? && Client.is_adult(@client.id)
					    				session[:HOUSEHOLD_MEMBER_REGISTRATION_STEP] = 'household_member_employments_step'
					    			else
					    				session[:HOUSEHOLD_MEMBER_REGISTRATION_STEP] = 'household_member_education_step'
					    			end
					    			redirect_to start_household_member_registration_wizard_path
					    		else
					    			redirect_to show_alien_path
					    		end
		   					else
		   					# Manoj 09/18/2014 - after correcting data elemnents go back to Application screening if you have come from application screening page.
			  					navigate_back_to_called_page()
	   					    end
					else
                         flash[:alert] = ls_return
                          render :new

					end
		else
			if  l_params[:client_citizenship].present?
				@alien.client_citizenship = l_params[:client_citizenship]
				@client.citizenship = l_params[:client_citizenship]

			end

			if  l_params[:alien_DOE].present?
				@alien.alien_DOE = l_params[:alien_DOE].to_date
			end

			render :new
		end
	rescue => err
		error_object = CommonUtil.write_to_attop_error_log_table("AliensController","create",err,current_user.uid)
		flash[:alert] = "Error ID: #{error_object.id} - Error when creating citizenship information."
		redirect_to_back
	end

	def edit
		@client = Client.find(session[:CLIENT_ID])
		# Manoj 12/02/2015 - called from Household member step
		@menu = nil
		if params[:menu].present?
			@menu = params[:menu]
			if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
				set_hoh_data(@client.id)
			end
		end
		# self.get_notes(arg_entity_type,arg_entity_id,arg_notes_type,arg_reference_id)
		@notes = nil #NotesService.get_notes(6150,session[:CLIENT_ID],6473,session[:CLIENT_ID])
		alien_collection = Alien.where("client_id = ?", @client.id).order("id desc")
  		if alien_collection.present?
  			@alien = alien_collection.first
  		else
  			@alien = Alien.new
			@alien.client_id = @client.id
  		end
  		@alien.client_citizenship = @client.citizenship if @client.citizenship.present?
  		@alien.sves_type = @client.sves_type if @client.sves_type.present?

		# Using Reform gem
		# send corresponding Client Model and Alien model in edit mode.
		 # @form = CitizenshipForm.new(client: @client, alien: @alien)
	rescue => err
		error_object = CommonUtil.write_to_attop_error_log_table("AliensController","edit",err,current_user.uid)
		flash[:alert] = "Error ID: #{error_object.id} - Error when editing citizenship information."
		redirect_to_back

	end

	def update
		@client = Client.find(session[:CLIENT_ID])
		#  if client is changing to Non citizenship in edit mode then - For Alien table - Insert script should go
		#  else Update.
		# Manoj 12/02/2015 - called from Household member step
		@menu = nil
		if params[:menu].present?
			@menu = params[:menu]
			if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
				set_hoh_data(@client.id)
			end
		end

		l_params = alien_params
		alien_collection = Alien.where("client_id = ?", @client.id).order("id desc")
  		if alien_collection.present?
  			@alien = alien_collection.first
  		else
           	@alien = Alien.new
			@alien.client_id = @client.id
			# @alien.client_citizenship = alien_params[:client_citizenship]
  		end

  		@alien.alien_DOE = l_params[:alien_DOE].to_date if l_params[:alien_DOE].present?
		@alien.country_of_origin = l_params[:country_of_origin] if l_params[:country_of_origin].present?
		@alien.refugee_status = l_params[:refugee_status] if l_params[:refugee_status].present?
		@alien.alien_no = l_params[:alien_no] if l_params[:alien_no].present?
		@alien.client_citizenship = l_params[:client_citizenship] if l_params[:client_citizenship].present?

		@notes = params[:notes]
		# if @form.validate(l_params)
		if @alien.valid?

				#  During Update if User selects -Citizenship == Y then clear alien fields from existing record.
				if l_params[:client_citizenship] == "Y"
					@alien.country_of_origin = nil
					@alien.refugee_status = nil
					@alien.alien_DOE = nil
					@alien.alien_no = nil
					# @alien.residency = l_alien_params[:residency]
					@client.citizenship = "Y"
					@client.sves_type =  l_params[:sves_type]
				else
					@alien.country_of_origin = l_params[:country_of_origin] if l_params[:country_of_origin].present?
					@alien.refugee_status =  l_params[:refugee_status] if l_params[:refugee_status].present?
					@alien.alien_DOE = l_params[:alien_DOE].to_date if l_params[:alien_DOE].present?
					@alien.alien_no = l_params[:alien_no] if l_params[:alien_no].present?
					# @alien.residency = l_alien_params[:residency]
					@client.citizenship = l_params[:client_citizenship]
					@client.sves_type = l_params[:sves_type] if l_params[:sves_type].present?
				end
				@alien.client_citizenship = l_params[:client_citizenship]
				@alien.sves_type = l_params[:sves_type] if l_params[:sves_type].present?

						ls_return = ClientAlienService.update_citizenship(@client,@alien,params[:notes])
						if ls_return == "SUCCESS"
							flash[:notice] = "Citizenship information saved."
						    	if session[:NAVIGATE_FROM].blank?
			   						if @menu == 'HOUSEHOLD_MEMBER_STEP_WIZARD'
						    			redirect_to start_household_member_registration_wizard_path
						    		else
						    			redirect_to show_alien_path
						    		end
			   					else
			   					# Manoj 09/18/2014 - after correcting data elemnents go back to Application screening if you have come from application screening page.
				  					navigate_back_to_called_page()
		   					    end
						else
                             flash[:alert] = ls_return
                              render :edit

						end

			# end
		else
			if  l_params[:client_citizenship].present?
				@alien.client_citizenship = l_params[:client_citizenship]
				@client.citizenship = l_params[:client_citizenship]

			end

			if  l_params[:alien_DOE].present?
				@alien.alien_DOE = l_params[:alien_DOE].to_date
			end
			render :edit
		end

	# rescue => err
	# 	error_object = CommonUtil.write_to_attop_error_log_table("AliensController","update",err,current_user.uid)
	# 	flash[:alert] = "Error ID: #{error_object.id} - Error when updating citizenship information."
	# 	redirect_to_back
	end


private

	def alien_params
	  params.require(:alien).permit(:client_citizenship,:sves_type,:country_of_origin,:refugee_status,:alien_DOE,:alien_no)
  	end

  	# Manoj 11/24/2015
 #  	def set_hoh_data()
 #  		li_member_id = params[:household_member_id].to_i
	# 	@household_member = HouseholdMember.find(li_member_id)
	# 	@household = Household.find(@household_member.household_id)
	# 	# @head_of_household_name = HouseholdMember.get_hoh_name(@household.id)
	# end



	# def client
	#   @client ||= Client.find(session[:CLIENT_ID])
	# end
	#   helper_method :client

	# def alien
	#   client.alien
	# end
	#   helper_method :alien




end
