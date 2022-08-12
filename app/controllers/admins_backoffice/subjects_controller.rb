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

  private 

  def set_subject
    @subject = Subject.find(params[:id])
  end 
end
