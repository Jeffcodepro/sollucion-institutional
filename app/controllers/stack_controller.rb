class StackController < ApplicationController
  def index
    @stack_items = StackItem.active.ordered
  end
end
