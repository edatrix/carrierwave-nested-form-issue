class ElvesController < ApplicationController

  def index
  end

  def new
    @elf = Elf.new
    @elf.toys.build
  end

  def create
    @elf = Elf.new(elf_params)
    @elf.save
  end

  private

  def elf_params
    params.require(:meeting).permit(:name, :toys_attributes => [:id, :name, :image, :remove_image, :_destroy])
  end

end