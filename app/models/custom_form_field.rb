# frozen_string_literal: true

# == Schema Information
#
# Table name: custom_form_fields
#
#  id             :bigint           not null, primary key
#  custom_form_id :bigint
#  data_type      :integer          not null
#  order          :integer          not null
#  data           :json             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class CustomFormField < ApplicationRecord
  belongs_to :custom_form
  belongs_to :user
  has_many :custom_form_answers

  enum custom_form_field_type: {
    single_lint_text: 0,
    long_text: 1,
    single_select: 2,
    multiple_select: 3
  }
end
