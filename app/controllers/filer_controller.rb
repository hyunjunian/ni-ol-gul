class FilerController < ApplicationController
  def index
  end

  def upload
    uploaded_io = params[:picture]
    File.open("/public/files/#{name}", 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end
end
