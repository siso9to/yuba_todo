class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
    service = ShowTodoService.call(params: params)
    render view_model: service.view_model
  end

  def new
    service = CreateTodoService.new(todo: Todo.new)
    render view_model: service.view_model
  end

  def edit
  end

  def create
    service = CreateTodoService.call(params: todo_params)

    if service.success?
      redirect_to todos_path
    else
      render :new, view_model: service.view_model
    end
  end

  def update
    service = CreateTodoService.call(params: todo_params)

    if service.success?
      redirect_to todos_path
    else
      render :edit, view_model: service.view_model
    end
  end

  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:description, :detail)
  end
end
