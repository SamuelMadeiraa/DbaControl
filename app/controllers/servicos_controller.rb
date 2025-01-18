class ServicosController < ApplicationController
  def index
    @servicos = Servico.all
  end

  def show
    @servico = Servico.find(params[:id])
  end

  def new
    @servico = Servico.new
  end

  def create
    @servico = Servico.new(servico_params)
    if @servico.save
      redirect_to @servico, notice: 'Serviço cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @servico = Servico.find(params[:id])
  end

  def update
    @servico = Servico.find(params[:id])
    if @servico.update(servico_params)
      redirect_to @servico, notice: 'Serviço atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @servico = Servico.find(params[:id])
    @servico.destroy
    redirect_to servicos_path, notice: 'Serviço excluído com sucesso.'
  end

  private

  def servico_params
    params.require(:servico).permit(:nome_cliente, :prazo_previsto, :data_inicio, :tipo_servico, :tipo_camera, :tipo_estrada, :estado)
  end
end
