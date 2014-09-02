class Hooks < Redmine::Hook::ViewListener

  def controller_issues_edit_before_save(context={})
    update_issue_status_on_done_ratio(context[:issue])
  end

  def controller_issues_bulk_edit_before_save(context={})
    update_issue_status_on_done_ratio(context[:issue])
  end

  def update_issue_status_on_done_ratio(issue)
    if issue.done_ratio == 100 and issue.status_id < 3
	issue.status_id = 3
    elsif issue.status_id == 1 and issue.done_ratio > 0
	issue.status_id = 2
    end
  end

  #TODO: Add configuration: current_status -> done_ratio -> new_status

end
