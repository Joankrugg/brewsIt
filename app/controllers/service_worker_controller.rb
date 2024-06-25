# app/controllers/service_worker_controller.rb
class ServiceWorkerController < ApplicationController
  protect_from_forgery except: :index

  def index
    headers['Content-Type'] = 'application/javascript'
    render template: 'service_worker/index'
  end
end
