class MainController < ApplicationController
  def index
    @todo = Todo.all
  end

  def create
    @main = Todo.new(todo_params)
        if @main.save
          render plain: "success"
      
        else 
          render plain: "failed"
         end
     end
  
def delete
        @del = Todo.find(params[:id])
      if @del.destroy
        redirect_to "/"
      end
end

private
def todo_params
  params.require(:todo).permit(:task, :due_date, :completed)
end

end
