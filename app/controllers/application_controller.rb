class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/todos" do
    todos = Todo.all.order(:created_at)
    todos.to_json
  end
  
  post "/todos" do
    todo = Todo.create(tasks: params[:tasks] )
    todo.to_json
  end
  
  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    message = Message.create(user_id: params[:user_id], tasks: params[:tasks])
    todo.to_json
  end
  
  
  end
  
end