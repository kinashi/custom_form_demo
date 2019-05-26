# frozen_string_literal: true

class CustomFormsController < ApplicationController
  def edit
    @custom_form = current_team.custom_forms.find(params[:id])
  end

  def update
  end

  private

  def current_team
    @current_team ||= Team.find(params[:team_id])
  end
end
