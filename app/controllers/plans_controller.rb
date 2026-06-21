class PlansController < ApplicationController
  def index
    @plans = Plan.active.ordered
    @contact_lead = ContactLead.new
  end
end
