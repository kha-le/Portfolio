class CommentsController < ApplicationController
  def index
    @skills = Skill.all
    @skill = Skill.find(params[:skill_id])
  end
end
