class Question
include ActiveModel::Model
#self.abstract_class = true
attr_accessor :option_1,:option_2,:option_3,:option_4,:option_5,:option_6,:option_7,:option_8,:option_9,:option_10,:zone,:work_interest
# has_many :answers
# accepts_nested_attributes_for :answers, :reject_if => :all_blank
# has_many :clients, through: :answers
end
