class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  
  post "/todos" do
    todo = Todo.create(tasks: params[:tasks] )
    todo.to_json
  end
  
  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    message = Message.create(user_id: params[:user_id], tasks: params[:tasks])
    todo.to_json
  end
  
  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
  
end