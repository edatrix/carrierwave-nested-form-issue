class ElvesController < ApplicationController

  def index
    @elf = Elf.new
  end

  def new
    @elf = Elf.new
    @elf.toys.build
  end

  def create
    @elf = Elf.new(elf_params)

    respond_to do |format|
      if @elf.save
        format.html { redirect_to elves_path, :notice => "#{@elf.name} was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  private

  def elf_params
    params.require(:elf).permit([:name, :toys_attributes => [:id, :name, :image, :remove_image, :_destroy]])
  end

end