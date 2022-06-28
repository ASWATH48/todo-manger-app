class MainController < ApplicationController
  def index
    new
   
     end
  def create
    main = Todo.new(task: params[:task], due_date: params[:due_date], completed: false )
        if main.save
          render plain: "success"
      
        else 
          render plain: "failed"
         end
     end
    
  # def get_tasks
 # render plain: Todo.all.map {|todo| todo.to_pleasant_string}.join("\n")
   # end
def new 
     @to = Todo.all
end

def delete
        @del = Todo.find(params[:id])
        if @del.destroy
        redirect_to "/"
        end
end


end
