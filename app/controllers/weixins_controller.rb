class WeixinsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :check_weixin_legality

  def show
    render :text => params[:echostr]
  end

  def create
    #根据消息类型判断
    case params[:xml][:MsgType]
    when "text"
      render "reply_text", :formats => :xml
    when "image"
      render "reply_image", :formats => :xml
    end
  end

  private
  # 根据参数校验请求是否合法，如果非法返回错误页面
  def check_weixin_legality
    array = [Settings.token, params[:timestamp], params[:nonce]].sort
    render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
  end
end
