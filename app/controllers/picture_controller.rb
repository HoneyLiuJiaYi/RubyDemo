class PictureController < ApplicationController
  #require BCE

  def up
  end

  def upload
    uploaded_io = params[:picture]
    File.open(Rails.root.join(uploaded_io.original_filename), "wb") do |file|
      file.write(uploaded_io.read)
    end
  end

  def tak
    UserMailer.send_mail(nil).deliver
  end

  def duanxin
    BCE::SMS.instance.remind_44h("18800105727")
    render :plain => '已经发送love'
  end
end
