# frozen_string_literal: true

# == Schema Information
#
# Table name: custom_forms
#
#  id         :bigint           not null, primary key
#  team_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CustomForm < ApplicationRecord
  belongs_to :team
  has_many :custom_form_fields

  accepts_nested_attributes_for :custom_form_fields, allow_destroy: true
end
