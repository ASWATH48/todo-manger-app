class MainController < ApplicationController
  def index
    @todo = Todo.all
  end

  def create
    main = Todo.new(task: params[:task], due_date: params[:due_date], completed: false )
        if main.save
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


end
