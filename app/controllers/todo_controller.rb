class TodoController < ApplicationController
    def index

    end

    def create
        @todo = Todo.new        
    end

    def store 
        @create_todo = Todo.new(todo_params)
        if @create_todo.save
            redirect_to todo_index_path, notice: "Todo created successfully"
        else
            render :create      
        end
    end

    def edit
        
    end

    def update
        
    end

    def delete 

    end

    private
    def todo_params
        params.require(:todo).permit(:task, :deadline, :status)
    end
end
