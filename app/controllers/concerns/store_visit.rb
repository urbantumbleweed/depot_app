module StoreVisit
  extend ActiveSupport::Concern

  private

  def store_visit_incrementer
    session[:store_visit_counter] ||= 0
    return session[:store_visit_counter] += 1
  end

  def counter_greater_than_five
    session[:store_visit_counter] > 5
  end

  def reset
    return session[:store_visit_counter] = 0
  end

end