class PagesController < ApplicationController
  def home
    @crew_members = CrewMember.all
    @missions = Mission.all
  end
end
