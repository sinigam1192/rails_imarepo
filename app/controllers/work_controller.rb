class WorkController < ApplicationController
  def new_company
    @work = Work.new
  end

  def create_company
    @work = Work.new(
      #記載してね！
    )
  end

  def new_report
    @report = Report.new
  end

  def report
    @report = Report.find_by(id:params[:id])
    @items = @report.items.split(",")
    @status = @report.status
    if @status == 0
      @value = "確認報告する"
    elsif @status == 1
      @value = "到着報告する"
      @content = "content_start"
    elsif @status == 2
      @value = "退場報告する"
      @content = "content_out"
    end
  end

  def show_company
    @work = Work.find_by(id: params[:id])

  end

  def status_advance
    @report = Report.find_by(id: params[:id])
    @report.status = @report.status + 1
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

  def create_company
  end


end
