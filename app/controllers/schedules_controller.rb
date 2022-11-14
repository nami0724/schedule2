class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all.order(id: "DESC")
  end

  def show
    @schedule = Schedule.find(params[:id])
    @checked =@schedule.all_day ? "○" : "p"
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :update_date, :confirm))
    if @schedule.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :schedules
    else
      render"new"
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :update_date, :confirm))
      flash[:notice]="ID「#{@schedule.id}」の情報を更新しました"
      redirect_to :schedules
    else
      render"edit"
  end
end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] ="スケジュールを削除しました"
    redirect_to :schedules
  end
end

private

def schedule_params
  params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :update_date, :confirm)
end


