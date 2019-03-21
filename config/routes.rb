Rails.application.routes.draw do
  # Routes for the Club resource:

  # CREATE
  get("/clubs/new", { :controller => "clubs", :action => "new_form" })
  post("/create_club", { :controller => "clubs", :action => "create_row" })

  # READ
  get("/clubs", { :controller => "clubs", :action => "index" })
  get("/clubs/:id_to_display", { :controller => "clubs", :action => "show" })

  # UPDATE
  get("/clubs/:prefill_with_id/edit", { :controller => "clubs", :action => "edit_form" })
  post("/update_club/:id_to_modify", { :controller => "clubs", :action => "update_row" })

  # DELETE
  get("/delete_club/:id_to_remove", { :controller => "clubs", :action => "destroy_row" })

  #------------------------------

  # Routes for the League resource:

  # CREATE
  get("/leagues/new", { :controller => "leagues", :action => "new_form" })
  post("/create_league", { :controller => "leagues", :action => "create_row" })

  # READ
  get("/leagues", { :controller => "leagues", :action => "index" })
  get("/leagues/:id_to_display", { :controller => "leagues", :action => "show" })

  # UPDATE
  get("/leagues/:prefill_with_id/edit", { :controller => "leagues", :action => "edit_form" })
  post("/update_league/:id_to_modify", { :controller => "leagues", :action => "update_row" })

  # DELETE
  get("/delete_league/:id_to_remove", { :controller => "leagues", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
