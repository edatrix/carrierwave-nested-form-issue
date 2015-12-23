class ElvesController < ApplicationController
  before_action :find_elf, :only => [:show, :edit, :update, :destroy]

  def index
    @elves = Elf.all
  end

  def new
    @elf = Elf.new
    @elf.toys.build
  end

  def create
    @elf = Elf.new(elf_params)

    if @elf.save
      redirect_to elves_path, :notice => "#{@elf.name} was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @elf.update(elf_params)
      redirect_to elves_path
    else
      render :edit
    end
  end

  def destroy
    @elf.destroy
  end

  private

  def find_elf
    @elf = Elf.find(params[:id])
  end

  def elf_params
    params.require(:elf).permit([:name, :toys_attributes => [:id, :name, :image, :remove_image, :_destroy]])
  end

end