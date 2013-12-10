class UploadsController < ApplicationController
  def index
    render :file => 'app\views\upload\uploadfile.rhtml'
  end

  def uploadFile
    post = StoreBook.save(params[:dafile], request.remote_ip)

    Grim.reap(params[:dafile].path)
    a = Grim.reap(params[:dafile].path)
    params[:dafile].original_filename
    jpg = a[0].save("#{Rails.root}/public/digital_assets/images/#{params[:dafile].original_filename.gsub(/\s/,'-')}.png")
    `convert #{Rails.root}/public/digital_assets/images/#{params[:dafile].original_filename.gsub(/\s/,'-')}.png -resize 90 #{Rails.root}/public/digital_assets/images/#{params[:dafile].original_filename.gsub(/\s/,'-')}-size90.png`

    render :text => "File has been uploaded successfully"
  end

end
