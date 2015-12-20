class ElvesController < ApplicationController

  def index
    @elves = Elf.all
  end

  def new
    @elf = Elf.new
    @elf.toys.build
  end

  def create
    @elf = Elf.new(elf_params)
    @elf.save
  end

  def edit
    @elf = Elf.find(params[:id])
  end

  def update
    @elf = Elf.find(params[:id])
    render :create
  end

  private

  def elf_params
    params.require(:elf).permit([:name, :toys_attributes => [:id, :name, :image, :remove_image, :_destroy]])
  end

end