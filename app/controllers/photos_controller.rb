class PhotosController < ApplicationController

  def index
    @list_of_all_my_photos = Photo.all

    render("photos/index.html.erb")
  end

  def create_row
    url = params[:the_source]
    cap = params[:the_caption]
    new_photo = Photo.new
    new_photo.source = url
    new_photo.caption = cap
    new_photo.save
    # render("photos/create_row.html.erb")
    redirect_to("/photos/#{new_photo.id}")
  end

  def new_form
    render("photos/new_form.html.erb")
  end

  def show
    the_id = params[:id]
    @my_photo = Photo.find(the_id)
    render("photos/show.html.erb")

  end

  def edit_form
    id = params[:id]
    @my_photo = Photo.find(id)


    render("photos/edit_form.html.erb")
  end

  def update_row
    render("photos/update_row.html.erb")
  end

  def destroy_row
    render("photos/destroy_row.html.erb")
  end

end
