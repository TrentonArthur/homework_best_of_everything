Rails.application.routes.draw do
  get("/", { :controller => "favorites", :action => "index" })

  # Routes for the Cuisine resource:
  # CREATE
  get('/cuisines/new', { :controller => 'cuisines', :action => 'new' })
  get('/create_cuisine', { :controller => 'cuisines', :action => 'create' })

  # READ
  get('/cuisines', { :controller => 'cuisines', :action => 'index' })
  get('/cuisines/:id', { :controller => 'cuisines', :action => 'show' })

  # UPDATE
  get('/cuisines/:id/edit', { :controller => 'cuisines', :action => 'edit' })
  get('/update_cuisine/:id', { :controller => 'cuisines', :action => 'update' })

  # DELETE
  get('/delete_cuisine/:id', { :controller => 'cuisines', :action => 'destroy' })
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get('/dishes/new_form', { :controller => 'dishes', :action => 'new_form' })
  get('/create_dish', { :controller => 'dishes', :action => 'create_row' })

  # READ
  get('/dishes', { :controller => 'dishes', :action => 'index' })
  get('/dishes/:id', { :controller => 'dishes', :action => 'show' })

  # UPDATE
  get('/dishes/:id/edit_form', { :controller => 'dishes', :action => 'edit_form' })
  get('/update_dish/:id', { :controller => 'dishes', :action => 'update_row' })

  # DELETE
  get('/delete_dish/:id', { :controller => 'dishes', :action => 'destroy' })
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get('/venues/new_form', { :controller => 'venues', :action => 'new_form' })
  get('/create_venue', { :controller => 'venues', :action => 'create_row' })

  # READ
  get('/venues', { :controller => 'venues', :action => 'index' })
  get('/venues/:id', { :controller => 'venues', :action => 'show' })

  # UPDATE
  get('/venues/:id/edit_form', { :controller => 'venues', :action => 'edit_form' })
  get('/update_venue/:id', { :controller => 'venues', :action => 'update_row' })

  # DELETE
  get('/delete_venue/:id', { :controller => 'venues', :action => 'destroy' })
  #------------------------------

  # Routes for the Neighborhood resource:
  # CREATE
  get('/neighborhoods/new_form', { :controller => 'neighborhoods', :action => 'new_form' })
  get('/create_neighborhood', { :controller => 'neighborhoods', :action => 'create_row' })

  # READ
  get('/neighborhoods', { :controller => 'neighborhoods', :action => 'index' })
  get('/neighborhoods/:id', { :controller => 'neighborhoods', :action => 'show' })

  # UPDATE
  get('/neighborhoods/:id/edit_form', { :controller => 'neighborhoods', :action => 'edit_form' })
  get('/update_neighborhood/:id', { :controller => 'neighborhoods', :action => 'update_row' })

  # DELETE
  get('/delete_neighborhood/:id', { :controller => 'neighborhoods', :action => 'destroy' })
  #------------------------------
end
