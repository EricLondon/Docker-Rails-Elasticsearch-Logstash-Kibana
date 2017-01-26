class Api::PagesController < ApplicationController
  def index
    render_params
  end

  def bob
    render_params
  end

  def loblaw
    render_params
  end

  def law
    render_params
  end

  def blog
    render_params
  end

  private

  def render_params
    render json: params
  end
end
