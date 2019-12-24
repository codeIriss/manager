class CommentsMailbox < ApplicationMailbox
  #before_processing :find_user
  before_filter :login_required, :except=>[:new, :create]

  def process
  	#return unless @user
    # byebug
    task = find_task(mail.subject)
    update_comments(task, mail.decoded)
  rescue
  	#error handling 

  end

  private

  def update_comments(task, comment_string)
  
  	task.comments.create!(note: comment_string)

  end


  def find_task(subject)
  	task_id = subject.split("-").last.to_i
  	Task.find(task_id)
  end
  
end
