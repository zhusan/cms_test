module WeiXin
  class MyHash < Hash
    include Hashie::Extensions::MethodAccess
  end

  class API < Grape::API
    prefix "weixin_api"
    # version "v1"
    format :json
    content_type :xml, "text/xml"

    helpers do
      def checksignature(signature, timestamp, nonce)
        puts Settings.token
        array = [Settings.token, timestamp, nonce].sort
        signature == Digest::SHA1.hexdigest(array.join)
      end
    end

    desc "validation"
    get do
      if checksignature(params[:signature], params[:timestamp], params[:nonce])
         params[:echostr].to_i
      end
    end

    desc "reply"
    post do
      body = Hash.from_xml(request.body.read)
      # status("200")
      case body['xml']['MsgType']
      when "text"
        reply = body['xml']['Content']
      end

      builder = Nokogiri::XML::Builder.new do |x|
        x.xml() {
          x.ToUserName {
          x.cdata body['xml']['FromUserName']
        }
        x.FromUserName {
          x.cdata body['xml']['ToUserName']
        }
        x.CreateTime Time.now.to_i
        x.MsgType {
          x.cdata "text"
        }
        x.Content {
          x.cdata reply
        }
        x.FuncFlag("0")
        }
      end
      # builder.to_xml
    end
  end
end
