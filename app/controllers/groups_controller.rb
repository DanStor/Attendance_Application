class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find params[:id]
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find params[:id]
  end

  def create
    @group = Group.new group_params
    respond_to do |format|
      if @group.save
        format.html{redirect_to @group, notice: "#{@groups.name} was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    @group = Group.find params[:id]
    respond_to do |format|
      if @group.update group_params
        format.html{redirect_to @group, notice: "#{@groups.name} was created"}
      else
        format.html{render :new}
      end
    end
  end

  def destroy
    @group = Group.find params[:id]
    @group.destroy
    redirect_to root_path
  end

  def group_params
    group_params = params.require(:group).permit(:name,:type,:startdate,:enddate,:active)
  end
end