class PagesController < ApplicationController
  def home
    @contact_lead = ContactLead.new
  end

  def privacidade; end

  def termos; end

  def data_deletion; end
end
