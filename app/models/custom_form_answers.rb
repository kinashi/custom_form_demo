# == Schema Information
#
# Table name: custom_form_answers
#
#  id             :bigint           not null, primary key
#  user_id        :bigint           not null
#  custom_form_id :bigint           not null
#  data           :json             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class CustomFormAnswers < ApplicationRecord
  belongs_to :custom_form_field
end
