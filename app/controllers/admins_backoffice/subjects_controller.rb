class AdminsBackoffice::SubjectsController < AdminsBackofficeController
  before_action :set_subject, only: [:destroy]
  
  def index
    @subjects = Subject.all.page(params[:page])
  end


  def new
    @subject = Subject.new
  end

  def destroy
    if @subject.destroy
      redirect_to admins_backoffice_subjects_path, notice: 'Tema excluido com sucesso!'
    else
      render :index
    end
  end

  def create
    @subject = Subject.new(params_admin)
    if @subject.save
      redirect_to admins_backoffice_subjects_path, notice: "Tema cadastrado com sucesso!"
    else
      render :new
    end
  end

  private 

  def params_admin
    params.require(:subject).permit(:description)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end 
end
