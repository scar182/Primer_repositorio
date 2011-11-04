class EstaticaController < ApplicationController
  def index

    #@notas = Nota.all 
    @notas = Nota.find(:all, :limit => 2, :order => "created_at DESC")

  end

  def somos
  end

  def contacto
  end

end
