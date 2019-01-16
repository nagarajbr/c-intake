namespace :update_assessment_questions_for_domestic_violence do
	desc "updating Assessment Questions for domestic violence "
	task :update_assessment_questions_for_domestic_violence => :environment do
        #deleting "Participant does not want to answer questions regarding domestic violence." "Participant's partner is present and these questions were not asked."
        connection = ActiveRecord::Base.connection()

		connection.execute("DELETE from assessment_question_metadata where assessment_question_id  in(605,709) and id in (317,318) ")
		connection.execute("DELETE from assessment_questions where  assessment_sub_section_id = 38 and id in(605,709)")

#update
		AssessmentQuestion.find(838).update(title: "Ask victim questions, regardless client gender.",question_text: "Ask victim questions, regardless client gender.")
		AssessmentQuestion.find(840).update(assessment_sub_section_id: 39  ,	display_order:2	)
		AssessmentQuestion.find(775).update(assessment_sub_section_id: 39  ,	display_order:3	)
		AssessmentQuestion.find(781).update(assessment_sub_section_id: 39  ,	display_order:4	)
		AssessmentQuestion.find(782).update(assessment_sub_section_id: 39  ,	display_order:5)
        AssessmentQuestion.find(783).update(assessment_sub_section_id: 39  ,	display_order:6)


        # "Perpetrator tab order change"
        assessment_object = AssessmentQuestion.create(assessment_sub_section_id:39,title:"Ask perpetrator questions, regardless client's gender.",question_text:"Ask perpetrator questions, regardless client gender.",display_order:1,enabled:1,required:1,created_by: 1,updated_by: 1)
        AssessmentQuestionMetadatum.create(assessment_question_id:assessment_object.id,response_data_type:"LABEL",created_by: 1,updated_by: 1)
        assessment_object1 = AssessmentQuestion.create(assessment_sub_section_id:39,title:"Please note: This section should not be asked if the participant's partner is also in the interview room.",question_text:"Please note: This section should not be asked if the participant's partner is also in the interview room.",display_order:7,enabled:1,required:1,created_by: 1,updated_by: 1)
        AssessmentQuestionMetadatum.create(assessment_question_id:assessment_object1.id,response_data_type:"LABEL",created_by: 1,updated_by: 1)
    	AssessmentQuestion.find(861	).update(display_order:	8	)
		AssessmentQuestion.find(715	).update(display_order:	9	)
		AssessmentQuestion.find(716	).update(display_order:	10	)
		AssessmentQuestion.find(717	).update(display_order:	11	)
		AssessmentQuestion.find(862	).update(display_order:	12	)
		AssessmentQuestion.find(718	).update(display_order:	13	)
		AssessmentQuestion.find(777	).update(display_order:	14	)
		AssessmentQuestion.find(863	).update(display_order:	15	)
		AssessmentQuestion.find(778	).update(display_order:	16	)
		AssessmentQuestion.find(719	).update(display_order:	17	)
		AssessmentQuestion.find(864	).update(display_order:	18	)
		AssessmentQuestion.find(779	).update(display_order:	19	)
		AssessmentQuestion.find(768	).update(display_order:	20	)
		AssessmentQuestion.find(865	).update(display_order:	21	)
		AssessmentQuestion.find(769	).update(display_order:	22	)
		AssessmentQuestion.find(770	).update(display_order:	23	)
		AssessmentQuestion.find(866	).update(display_order:	24	)
		AssessmentQuestion.find(771	).update(display_order:	25	)
		AssessmentQuestion.find(772	).update(display_order:	26	)
		AssessmentQuestion.find(867	).update(display_order:	27	)
		AssessmentQuestion.find(773	).update(display_order:	28	)
		AssessmentQuestion.find(789	).update(display_order:	29	)
		AssessmentQuestion.find(868	).update(display_order:	30	)
		AssessmentQuestion.find(790	).update(display_order:	31	)
		AssessmentQuestion.find(791	).update(display_order:	32	)
		AssessmentQuestion.find(869	).update(display_order:	33	)
		AssessmentQuestion.find(792	).update(display_order:	34	)
		AssessmentQuestion.find(793	).update(display_order:	35	)
		AssessmentQuestion.find(870	).update(display_order:	36	)
		AssessmentQuestion.find(794	).update(display_order:	37	)
		AssessmentQuestion.find(795	).update(display_order:	38	)
		AssessmentQuestion.find(871	).update(display_order:	39	)
		AssessmentQuestion.find(796	).update(display_order:	40	)
		AssessmentQuestion.find(797	).update(display_order:	41	)
		AssessmentQuestion.find(872	).update(display_order:	42	)
		AssessmentQuestion.find(800	).update(display_order:	43	)
		AssessmentQuestion.find(799	).update(display_order:	44	)
		AssessmentQuestion.find(873	).update(display_order:	45	)
		AssessmentQuestion.find(802	).update(display_order:	46	)
		AssessmentQuestion.find(801	).update(display_order:	47	)
		AssessmentQuestion.find(874	).update(display_order:	48	)
		AssessmentQuestion.find(798	).update(display_order:	49	)
		AssessmentQuestion.find(713	).update(display_order:	50	)
		AssessmentQuestion.find(714	).update(display_order:	51	)
		AssessmentQuestion.find(216	).update(display_order:	52	)
      end
    end
