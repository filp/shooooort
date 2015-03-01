module Api
  class ShortUrlController < ApiController
    def show
      short = ShortUrl.find_by!(short_code: params[:id])

      render json: short
    end
  end
end
