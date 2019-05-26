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
end
