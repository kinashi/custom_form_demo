# == Schema Information
#
# Table name: custom_form_fields
#
#  id             :bigint           not null, primary key
#  custom_form_id :bigint
#  data           :json             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class CustomFormField < ApplicationRecord
  belongs_to :custom_form
  belongs_to :user
  has_many :custom_form_answers
end
