class AuthController < ApplicationController

  private

  def dropbox_auth
      redirect_uri = url_for :action => 'dropbox_callback'
      DropboxOAuth2Flow.new(ENV['m6n5no0cuseaxhr'], ENV['falp5di84tmhwy5'], redirect_uri, session, :dropbox_auth_csrf_token)
  end  
  end  

  def login
  	  authorize_url = dropbox_auth.start()
  	  redirect_to authorize_url
  end

  def dropbox_callback
  	   access_token, user_id, url_state = dropbox_auth.finish(params)
  	   session[:access_token] = access_token
  	   user = DropboxClient.new(access_token).account_info
  	   validate_user user
  	   redirect_to root_path
  end

  def validate_user plcgallery
  	  existing_plcgallery = Plcgallery.find_by(email: plcgallery["email"])
  	  if existing_plcgallery.present?
  	  	 session[:current_user] = existing_plcgallery.name
  	  else
         new_plcgallery = Plcgallery.create(name: plcgallery["display_name"], dropbox_uid: plcgallery["uid"], email: plcgallery["email"], dropbox_token: session[:access_token])
         session[:current_user] = new_plcgallery.name 
      end
        
  end       
  def logout
  	  session.delete(:current_user)
  	  redirect_to root_path
  end

