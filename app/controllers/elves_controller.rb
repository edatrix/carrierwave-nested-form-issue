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

    respond_to do |format|
      if @elf.save
        format.html { redirect_to elves_path, :notice => "#{@elf.name} was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @elf.update(elf_params)
        format.html { redirect_to elves_path, :notice => "#{@elf.name} was successfully updated." }
      else
        format.html { render :edit }
      end
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