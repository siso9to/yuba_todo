class ShowTodoService < Yuba::Service
  property :todo
  property :params, optional: true

  def call
  end

  def view_model
    ShowTodoViewModel.new(todo: Todo.find(params[:id]))
  end
end
