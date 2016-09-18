class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    forder_upload   = 'app/assets/images/'
    @user_save      = user_params
    images          = params[:user][:images]
    img_name        = ""
    if images != nil
      img_name = DateTime.now.to_s(:number) + "-"+images.original_filename
    end
    @user_save[:images]  = img_name
    @user = User.new(@user_save)

    respond_to do |format|
      if @user.save
        if images != nil
          File.open(Rails.root.join(forder_upload.to_s,  img_name), 'wb') do |file|
            file.write(images.read)
          end
        end
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    forder_upload   = 'app/assets/images/'
    @user_save      = user_params
    images          = params[:user][:images]
    img_name        = ""
    if images != nil
      img_name = DateTime.now.to_s(:number) + "-"+images.original_filename
    end
    @user_save[:images]  = img_name
    respond_to do |format|
      if @user.update(user_params)
        if images != nil
          File.open(Rails.root.join(forder_upload.to_s,  img_name), 'wb') do |file|
            file.write(images.read)
          end
        end
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :email, :age, :images)
    end
end
