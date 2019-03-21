class PlayersController < ApplicationController
  def index
    @q = Player.ransack(params[:q])
    @players = @q.result(:distinct => true).includes(:club).page(params[:page]).per(10)

    render("player_templates/index.html.erb")
  end

  def show
    @player = Player.find(params.fetch("id_to_display"))

    render("player_templates/show.html.erb")
  end

  def new_form
    @player = Player.new

    render("player_templates/new_form.html.erb")
  end

  def create_row
    @player = Player.new

    @player.club_id = params.fetch("club_id")
    @player.name = params.fetch("name")
    @player.position = params.fetch("position")
    @player.level = params.fetch("level")

    if @player.valid?
      @player.save

      redirect_back(:fallback_location => "/players", :notice => "Player created successfully.")
    else
      render("player_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_club
    @player = Player.new

    @player.club_id = params.fetch("club_id")
    @player.name = params.fetch("name")
    @player.position = params.fetch("position")
    @player.level = params.fetch("level")

    if @player.valid?
      @player.save

      redirect_to("/clubs/#{@player.club_id}", notice: "Player created successfully.")
    else
      render("player_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @player = Player.find(params.fetch("prefill_with_id"))

    render("player_templates/edit_form.html.erb")
  end

  def update_row
    @player = Player.find(params.fetch("id_to_modify"))

    @player.club_id = params.fetch("club_id")
    @player.name = params.fetch("name")
    @player.position = params.fetch("position")
    @player.level = params.fetch("level")

    if @player.valid?
      @player.save

      redirect_to("/players/#{@player.id}", :notice => "Player updated successfully.")
    else
      render("player_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_club
    @player = Player.find(params.fetch("id_to_remove"))

    @player.destroy

    redirect_to("/clubs/#{@player.club_id}", notice: "Player deleted successfully.")
  end

  def destroy_row
    @player = Player.find(params.fetch("id_to_remove"))

    @player.destroy

    redirect_to("/players", :notice => "Player deleted successfully.")
  end
end
