require 'pry'
class AdminsBackoffice::QuestionsController < AdminsBackofficeController
  
  def show
    @questions = Question.all.page(params[:page])
  end

  def index
    @questions = Question.all.page(params[:page])
  end

end
