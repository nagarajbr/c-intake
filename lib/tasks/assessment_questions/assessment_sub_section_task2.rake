namespace :assessment_sub_section_task2 do
	desc "Assessment Sub Sections"
	task :assessment_sub_section => :environment do
		 connection = ActiveRecord::Base.connection()
    	connection.execute("TRUNCATE TABLE public.assessment_sub_sections")
    	connection.execute("SELECT setval('public.assessment_sub_sections_id_seq', 1, true)")

AssessmentSubSection.create(assessment_section_id:	2	,title:"Currently Working",description:"Currently Working",display_order:	1	,enabled:1,all_sub_section_order:	1	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Reasons Not Working",description:"Reasons Not Working",display_order:	2	,enabled:1,all_sub_section_order:	2	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Job History",description:"Job History",display_order:	3	,enabled:1,all_sub_section_order:	3	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Legal Barriers",description:"Criminal Record",display_order:	4	,enabled:1,all_sub_section_order:	4	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Experience",description:"Experience",display_order:	6	,enabled:1,all_sub_section_order:	6	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Spoken Languages",description:"Spoken Languages",display_order:	7	,enabled:1,all_sub_section_order:	7	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Work Interests",description:"Work Interests",display_order:	8	,enabled:1,all_sub_section_order:	8	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	2	,title:"Career Interests",description:"Career Interests",display_order:	9	,enabled:1,all_sub_section_order:	9	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	3	,title:"Highest Grade",description:"Highest Grade",display_order:	1	,enabled:1,all_sub_section_order:	10	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	3	,title:"Diploma, Degree, Certificate",description:"Diploma, Degree, Certificate",display_order:	2	,enabled:1,all_sub_section_order:	11	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	3	,title:"Other Education, Training, Certificate",description:"Other Education, Training, Certificate",display_order:	3	,enabled:1,all_sub_section_order:	12	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	3	,title:"Learning Difficulties",description:"Learning Difficulties",display_order:	4	,enabled:1,all_sub_section_order:	13	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	3	,title:"English",description:"English",display_order:	5	,enabled:1,all_sub_section_order:	14	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	4	,title:"Current Housing",description:"Current Housing",display_order:	1	,enabled:1,all_sub_section_order:	15	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	4	,title:"Housing Indicator Question",description:"Housing Indicator Question",display_order:	2	,enabled:1,all_sub_section_order:	16	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	4	,title:"Housing Situation",description:"Housing Situation",display_order:	3	,enabled:1,all_sub_section_order:	17	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	5	,title:"Pregnancy Indicator Question",description:"Pregnancy Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	18	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	5	,title:"Pregnancy",description:"Pregnancy",display_order:	2	,enabled:1,all_sub_section_order:	19	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Child Care and Parenting Indicator Question",description:"Child Care and Parenting Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	20	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Children Issues",description:"Children Issues",display_order:	2	,enabled:1,all_sub_section_order:	21	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Primary Caregiver",description:"Primary Caregiver",display_order:	3	,enabled:1,all_sub_section_order:	22	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Parenting and Child Support",description:"Parenting and Child Support",display_order:	4	,enabled:1,all_sub_section_order:	23	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Childcare",description:"Childcare",display_order:	5	,enabled:1,all_sub_section_order:	24	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Childcare Status",description:"Childcare Status",display_order:	6	,enabled:1,all_sub_section_order:	25	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	6	,title:"Backup Childcare Plan",description:"Backup Childcare Plan",display_order:	7	,enabled:1,all_sub_section_order:	26	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	7	,title:"Closing Question",description:"Closing Question",display_order:	1	,enabled:1,all_sub_section_order:	27	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	8	,title:"General Health Indicator Question",description:"General Health Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	28	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	8	,title:"Current Health",description:"Current Health",display_order:	2	,enabled:1,all_sub_section_order:	29	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	8	,title:"Health Challenge",description:"Health Challenge",display_order:	3	,enabled:1,all_sub_section_order:	30	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	9	,title:"Substance Abuse Indicator Question",description:"Substance Abuse Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	31	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	9	,title:"Alcohol and Drugs",description:"Alcohol and Drugs",display_order:	2	,enabled:1,all_sub_section_order:	32	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	9	,title:"Household Drugs",description:"Household Drugs",display_order:	3	,enabled:1,all_sub_section_order:	33	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	10	,title:"Mental Health Indicator Question",description:"Mental Health Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	34	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	10	,title:"Mental Health",description:"Mental Health",display_order:	2	,enabled:1,all_sub_section_order:	35	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	10	,title:"Diagnosis",description:"Diagnosis",display_order:	3	,enabled:1,all_sub_section_order:	36	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	11	,title:"Domestic Violence - Safety Indicator Question",description:"Domestic Violence - Safety Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	37	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	11	,title:"Victim",description:"Victim",display_order:	2	,enabled:1,all_sub_section_order:	38	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	11	,title:"Perpetrator",description:"Perpetrator",display_order:	3	,enabled:1,all_sub_section_order:	39	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	13	,title:"Transportation Indicator Question",description:"Transportation Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	40	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	13	,title:"Transportation Method",description:"Transportation Method",display_order:	2	,enabled:1,all_sub_section_order:	41	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	13	,title:"Driving License",description:"Driving License",display_order:	3	,enabled:1,all_sub_section_order:	42	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	13	,title:"Transportation Challenge",description:"Transportation Challenge",display_order:	4	,enabled:1,all_sub_section_order:	43	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	14	,title:"Relationships Indicator Question",description:"Relationships Indicator Question",display_order:	1	,enabled:1,all_sub_section_order:	44	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	14	,title:"Relationships",description:"Relationships",display_order:	2	,enabled:1,all_sub_section_order:	45	,created_by: 1,updated_by: 1)
AssessmentSubSection.create(assessment_section_id:	15	,title:"Finance",description:"Client's Finace Assessment sub section",display_order:	1	,enabled:1,all_sub_section_order:	45	,created_by: 1,updated_by: 1)


    end
end