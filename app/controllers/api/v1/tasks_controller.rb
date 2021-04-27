class Api::V1::TasksController < Api::ApplicationController
  def index
    tasks = Task.all
                .ransack(ransack_params)
                .result
                .page(page)
                .per(per_page)
  
    respond_with(tasks, each_serializer: TaskSerializer, root: 'items', meta: build_meta(tasks))
  end

  def show
  end
end