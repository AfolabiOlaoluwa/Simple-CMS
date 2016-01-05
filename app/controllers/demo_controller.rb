class DemoController < ApplicationController

  layout 'application'

  def index
    render('demo/index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id'].to_i # Instance Variables is used and will be available in the Template
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    redirect_to ("http://lynda.com")
  end

  def text_helpers

  end

  def escape_output

  end

end
