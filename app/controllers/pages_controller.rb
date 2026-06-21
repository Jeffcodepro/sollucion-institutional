class PagesController < ApplicationController
  def home
    @solutions = Solution.active.ordered.limit(6)
    @stack_items = StackItem.active.ordered.limit(8)
    @plans = Plan.active.ordered
    @blog_posts = BlogPost.visible.ordered.limit(3)
    @contact_lead = ContactLead.new
  end
end
