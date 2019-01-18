class QuestionsController  < AttopAncestorController
include Wicked::Wizard
before_action :capture_answers, on: [:show, :update]


steps :question_1_10, :question_11_20, :question_21_30,:question_31_40,:question_41_50,:question_51_60 , :show_interest_areas  ,:questions_submit,:show_occupations



  def show
   @quest = Question.new
   career_advisor_id = Intake::Application::CAREER_ADVISOR_ID
   career_advisor_pwd = Intake::Application::CAREER_ADVISOR_PWD
   if session[:question_type] = "MP"
      params[:name] = "Interests Profiler"

   end
   client = Client.find(session[:CLIENT_ID])
        existing_client_assessment = ClientAssessment.get_client_assessments(client.id)
      if existing_client_assessment.present?
        client_assessment = existing_client_assessment.first
        session[:CLIENT_ASSESSMENT_ID] = client_assessment.id
      else
        client_assessment = ClientAssessment.new
        client_assessment.client_id = client.id
        client_assessment.assessment_date = Date.today
        client_assessment.assessment_status = 6265
        session[:CLIENT_ASSESSMENT_ID] = client_assessment.id if client_assessment.save
      end
  	case step
  		when :question_1_10
          #flash[:alert] = "Please Answer all the question( 1- 10) to better Asses your profile"
          session[:question_type] = params[:param1]
          #@questions  = CareerAdvisorWebServices.new("","").get_short_form_ip
          if session[:question_type]  == "IP"
             @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
             @questions  = CareerAdvisorWebServices.new("","").get_short_form_ip
          end
      when :question_11_20

          #flash[:alert] = "Please Answer all the question( 11- 20) to better Asses your profile"
          if session[:question_type]  == "IP"
             @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
             @questions  = CareerAdvisorWebServices.new("","").get_short_form_ip
          end
  		when :question_21_30
          #flash[:alert] = "Please Answer all the question( 21- 30) to better Asses your profile"
          if session[:question_type]  == "IP"
             @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
             @questions  = CareerAdvisorWebServices.new("","").get_short_form_ip
          end
  		when :question_31_40
          #flash[:alert] = "Please Answer all the question( 31- 40) to better Asses your profile"

          if session[:question_type]  == "IP"
            @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
            jump_to(:show_interest_areas)
          end

  		when :question_41_50
          #flash[:alert] = "Please Answer all the question( 41- 50) to better Asses your profile"
          if session[:question_type]  == "IP"
            @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
            jump_to(:show_interest_areas)
          end
  		when :question_51_60
          #flash[:alert] = "Please Answer all the question( 51- 60) to better Asses your profile"
          if session[:question_type]  == "IP"
            @questions  = CareerAdvisorWebServices.new("","").get_long_form_ip
          else
            jump_to(:show_interest_areas)
          end
      when :show_interest_areas
          if session[:question_type]  == "IP" #Mini profiler
               @mini_answers = ClientAssessmentAnswer.where("client_assessment_id = ? and assessment_question_id = 939",session[:CLIENT_ASSESSMENT_ID].to_i)
               @answer_obj = nil
              if @mini_answers.present?
                @answer_obj = @mini_answers.first
                @answer_obj.answer_value = session[:answers].to_s
              else
                 @answer_obj = ClientAssessmentAnswer.new
                 @answer_obj.client_assessment_id = session[:CLIENT_ASSESSMENT_ID].to_i
                 @answer_obj.assessment_question_id = 939
                 @answer_obj.answer_value = session[:answers].to_s
              end
                  @answer_obj.save
          else
            @wp_answers = ClientAssessmentAnswer.where("client_assessment_id = ? and assessment_question_id = 940",session[:CLIENT_ASSESSMENT_ID].to_i) # Work Intrest
               @answer_obj = nil
              if @wp_answers.present?
                @answer_obj = @wp_answers.first
                @answer_obj.answer_value = session[:answers].to_s
              else
                 @answer_obj = ClientAssessmentAnswer.new
                 @answer_obj.client_assessment_id = session[:CLIENT_ASSESSMENT_ID].to_i
                 @answer_obj.assessment_question_id = 940
                 @answer_obj.answer_value = session[:answers].to_s
              end
                  @answer_obj.save
           end
              @intrest_areas = CareerAdvisorWebServices.new("#{career_advisor_id}","#{career_advisor_pwd}").get_work_interests(session[:CLIENT_ID],session[:answers].to_i,0,2)
      when :questions_submit
           @intrest_areas = CareerAdvisorWebServices.new("#{career_advisor_id}","#{career_advisor_pwd}").get_work_interests(session[:CLIENT_ID],session[:answers].to_i,0,2)
           @job_zone_desc = CareerAdvisorWebServices.new("#{career_advisor_id}","#{career_advisor_pwd}").get_job_zones_details(1,15)
      when :show_occupations
          @job_zone_desc = CareerAdvisorWebServices.new("#{career_advisor_id}","#{career_advisor_pwd}").get_job_zones_details(params["question"]["zone"],params["question"]["zone"])

          @zone_results = CareerAdvisorWebServices.new("#{career_advisor_id}","#{career_advisor_pwd}").get_matching_carrers(params["question"]["zone"],params["question"]["zone"],params["question"]["work_interest"],session[:CLIENT_ID])



    end
  	render_wizard
  end

  def capture_answers
    case step

      when :question_11_20
           answers = nil
          (1..10).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["1"].present?
          end

         session["#{previous_step}"] = answers.to_s if answers.present?



         if session["#{previous_step}"].to_s.length != 10
         flash[:alert] = "Please Answer all the questions( 1- 10) for better Assessement"
         jump_to(:question_1_10)
       end

      when :question_21_30
           answers = nil
          (11..20).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["11"].present?
          end
           session["#{previous_step}"] = answers.to_s if answers.present?

            if session["#{previous_step}"].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 11- 20) for better Assessement"
               jump_to(:question_11_20)
            end

      when :question_31_40
           answers = nil
          (21..30).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["21"].present?
          end
          session["#{previous_step}"] = answers.to_s if answers.present?

            if session["#{previous_step}"].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 21- 30) for better Assessement"
               jump_to(:question_21_30)
            end

      when :question_41_50
           answers = nil
          (31..40).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["31"].present?
          end
          session["#{previous_step}"] = answers.to_s if answers.present?

          if session["#{previous_step}"].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 31- 40) for better Assessement"
               jump_to(:question_31_40)
            end

      when :question_51_60
           answers = nil
          (41..50).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["41"].present?
          end
          session["#{previous_step}"] = answers.to_s if answers.present?

         if session["#{previous_step}"].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 41- 50) for better Assessement"
               jump_to(:question_41_50)
            end
      when :show_interest_areas
        if session[:question_type]  == "IP"
           answers = nil
          (51..60).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["51"].present?
          end
          session["#{previous_step}"] = answers.to_s if answers.present?

          if session["#{previous_step}"].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 51- 60) for better Assessement"
               jump_to(:question_51_60)
            end
          session[:answers] = ""
          wizard_steps.each do |stp|
          session[:answers] = session[:answers] + session[stp].to_s if session[stp].present?
          end
        else
           answers = nil
          (21..30).each do |counter|
            answers = answers.to_s + params["#{counter}"].to_s if params["21"].present?
          end
          session[:question_21_30] = answers.to_s if answers.present?

          if session[:question_21_30].to_s.length != 10
               flash[:alert] = "Please Answer all the questions( 21- 30) for better Assessement"
               jump_to(:question_21_30)
            end
          session[:answers] = ""
          wizard_steps.each do |stp|
          session[:answers] = session[:answers] + session[stp].to_s if session[stp].present?
          end
        end
      when :questions_submit
         # if session[:question_type]  == "IP"
         #   answers = nil
         #  (51..60).each do |counter|
         #    answers = answers.to_s + params["#{counter}"].to_s if params["51"].present?
         #  end
         #  session["#{previous_step}"] = answers.to_s if answers.present?

         #  if session["#{previous_step}"].to_s.length != 10
         #       flash[:alert] = "Please Answer all the questions( 51- 60) for better Assessement"
         #       jump_to(:question_51_60)
         #    end
         #  else
         #    answers = nil
         #  (21..30).each do |counter|
         #    answers = answers.to_s + params["#{counter}"].to_s if params["21"].present?
         #  end
         #  session[:question_21_30] = answers.to_s if answers.present?

         #  if session["#{previous_step}"].to_s.length != 10
         #       flash[:alert] = "Please Answer all the questions( 21- 30) for better Assessement"
         #       jump_to(:question_21_30)
         #    end
         #  end

    end
end
   def finish_wizard_path
    # session[:answers] = ""
    # wizard_steps.each do |stp|
    # session[:answers] = session[:answers] + session[stp].to_s if session[stp].present?
    # end
    interest_profilers_path

   end





end
