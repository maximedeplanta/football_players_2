class LeaguesController < ApplicationController
  def index
    @leagues = League.page(params[:page]).per(10)

    render("league_templates/index.html.erb")
  end

  def show
    @club = Club.new
    @league = League.find(params.fetch("id_to_display"))

    render("league_templates/show.html.erb")
  end

  def new_form
    @league = League.new

    render("league_templates/new_form.html.erb")
  end

  def create_row
    @league = League.new

    @league.name = params.fetch("name")
    @league.level = params.fetch("level")

    if @league.valid?
      @league.save

      redirect_back(:fallback_location => "/leagues", :notice => "League created successfully.")
    else
      render("league_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @league = League.find(params.fetch("prefill_with_id"))

    render("league_templates/edit_form.html.erb")
  end

  def update_row
    @league = League.find(params.fetch("id_to_modify"))

    @league.name = params.fetch("name")
    @league.level = params.fetch("level")

    if @league.valid?
      @league.save

      redirect_to("/leagues/#{@league.id}", :notice => "League updated successfully.")
    else
      render("league_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @league = League.find(params.fetch("id_to_remove"))

    @league.destroy

    redirect_to("/leagues", :notice => "League deleted successfully.")
  end
end
