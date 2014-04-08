require "helpers"

module DangJian
  class MyHash < Hash
    include Hashie::Extensions::MethodAccess
  end

  class API < Grape::API
    prefix "api"
    # version "v1"
    format :json

    helpers APIHelpers
    resource  :pages do
      get "show/:id" do
        response_hash = MyHash.new
        page = Alchemy::Page.where(id: params[:id])
        if page.size > 1
          response_hash.title = page.title
          response_hash.meta_keywords = page.meta_keywords
          response_hash.meta_description = page.meta_description
        end
        response_hash.to_json
      end
    end
  end
end
