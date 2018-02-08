class SchoolClassesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @school_class=SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @post=Post.find(params[:id]
    @post.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @post=Post.find(params[:id])
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
