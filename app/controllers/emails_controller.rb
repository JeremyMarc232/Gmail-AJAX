class EmailsController < ApplicationController

  def create
    @email = Email.create(object: Faker::Cannabis.buzzword, body: Faker::Lorem.paragraph)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def index
    @emails = Email.all
  end

  def show
    @emails = Email.all
    @email = Email.find_by(id: params[:id])
    respond_to do |format|
      format.html { }
      format.js { }
    end
  end
end
