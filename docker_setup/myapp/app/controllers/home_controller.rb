class HomeController < ApplicationController
  def index
    render plain: "Hello from Rails on Kubernetes!"
  end
end
