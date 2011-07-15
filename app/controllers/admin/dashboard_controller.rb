class Admin::DashboardController < Admin::AdminController

  before_filter :load_resources

  def index

  end

  def load_resources
    @users = User.paginate :page => params[:page] , :order => 'created_at DESC'

    @instructors = Instructor.all
    @training_open = Training.where("closed = ? ", false)
    @training_closed = Training.where("closed = ? ", true)

  end
end

