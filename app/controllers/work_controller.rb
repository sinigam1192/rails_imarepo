class WorkController < ApplicationController
  def new_company
    @work = Work.new
  end

  def create_company
    @work = Work.new(
      users_id: @current_user.id
    )
  end

  def show_company
    @work = Work.find_by(id: params[:id])
    @reports_id = @work.report_id.split(",")
  end

  def new_report
    @report = Report.new
  end

  def edit
    @report = Report.find_by(id: params[:id])
  end

  def update
    @report = Report.find_by(id: params[:id])
    @report.name = params[:name]
    @report.to_user = params[:to_user]
    @report.adress = params[:adress]
    @report.date = params[:date]
    @report.in_time = params[:in_time]
    @report.out_time = params[:out_time]
    @report.items = params[:items]
    @report.content_start = params[:content_start]
    @report.save
    redirect_to("/work/report/#{@report.id}")
  end

  def report
    @report = Report.find_by(id:params[:id])
    @items = @report.items.split(",")
    @status = @report.status
    @in_time = @report.in_time.strftime("%H:%M")
    @out_time = @report.out_time.strftime("%H:%M")
    if @status == 0
      @value = "確認報告する"
    elsif @status == 1
      @value = "到着報告する"
    elsif @status == 2
      @value = "退場報告する"
    end
  end



  def status_advance
    @report = Report.find_by(id: params[:id])
        @report.status = @report.status + 1
    if @report.status == 2
      @report.cotnent_in = params[:cotnent_in]
      @report.latitude = params[:lat]
      @report.longitude = params[:lng]
      @report.arrival_time = Time.now
    elsif @report.status == 3
      @report.content_out = params[:content_out]
      @report.withdrawal_time = Time.now
    end
    @report.save
    redirect_to("/work/report/#{@report.id}")
  end

  def status_retreat
    @report = Report.find_by(id: params[:id])
    @report.status = @report.status - 1
    @report.save
    redirect_to("/work/report/#{@report.id}")
  end

  def create_report
    @report = Report.new(
    name:  params[:name],
    to_user: params[:to_user],
    adress: params[:adress],
    date: params[:date],
    in_time: params[:in_time],
    out_time: params[:out_time],
    items: params[:items],
    content_start: params[:content_start],
    status: 0,
    from_user: @current_user.id
  )
    if @report.save
      redirect_to("/work/report/#{@report.id}")
    else
      render("work/report/new")
    end
  end

end
