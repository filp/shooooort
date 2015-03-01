module Api
  class RootController < ApiController
    def index
      head :ok
    end
  end
end
