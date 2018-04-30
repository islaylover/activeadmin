class IndexController < ApplicationController
    def top
      case Rails.env
        when "development"
          render plain: 'this is development and http(-0-)(-0-)'
        when "production"
          render plain: 'this is production and https(^0^)(=^0^=)'
      end
    end
end
