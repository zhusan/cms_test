class QiniuTestsController < ApplicationController
  def upload_img_by_url
    @file_path = "http://cms.zhusan.net/cms/pictures/1/show/1200x600/9d82d158ccbf6c816a45a7a8be3eb13533fa4004.jpg"
    enc_remote_url =  Qiniu::Utils.urlsafe_base64_encode(@file_path )
    encode_entry_uri = Qiniu::Utils.encode_entry_uri('yinyue',"#{Time.now}.png")
    path = "/fetch/#{enc_remote_url}/to/#{encode_entry_uri}"
    signing_str = path+"\n"
    # encoded_sign = Qiniu::Utils.urlsafe_base64_encode HMAC::SHA1.digest(signing_str,Settings.qiniu.secret_key)
    encoded_sign = HMAC::SHA1.digest(signing_str,Settings.qiniu.secret_key)
    puts  encoded_sign
    # response_text =  post "http://iovip.qbox.me" + path, nil, {"Content-Type" => "application/x-www-form-urlencoded","Host" => "iovip.qbox.me","Athorization" => "QBox #{Settings.qiniu.access_key}:#{encoded_sign}"}
    # render text: response_text
    #



    host = "http://iovip.qbox.me"
    uri = URI.parse "#{host}#{path}"
    http = Net::HTTP.new(uri.host, uri.port)
    re = Net::HTTP::Post.new(uri.path)
    re.add_field('Content-Type', 'application/x-www-form-urlencoded')
    re.add_field('Host','iovip.qbox.me')
    re.add_field("Athorization","QBox #{Settings.qiniu.access_key}:#{encoded_sign}")
    rp = http.request(re)
    render text:  rp
 
  end


  def post (url, req_body = nil, opts = {})
    req_headers = {
      :accept     => '*/*',
      :user_agent => "curl/7.30.0"
    }
puts opts
    if opts.is_a?(Hash) then
      req_headers.merge!(opts)
    end
    puts 1
puts  url
    puts 2
puts  req_body
    puts 3
puts  req_headers
    response = RestClient.post(url, req_body, req_headers)
puts response
    return response.code.to_i, response.body, response.raw_headers
puts  response.code.to_i
puts  response.body
puts  response.raw_headers
  rescue => e
    puts "#{e.message} => Qiniu::HTTP.post('#{url}')"
    return nil, nil, nil
  end 
end
