class CreateTodoService < Yuba::Service
  property :todo
  property :params, optional: true

  def call
    if form.validate(params)
      form.save
    else
      fail!
    end
  end

  def view_model
    CreateTodoViewModel.new(form: form)
  end

  private

  def form
    @form ||= TodoForm.new(Todo.new)
  end
end
