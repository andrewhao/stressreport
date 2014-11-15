require "lotus"

module Stressreport
  class Application < Lotus::Application
    configure do
      routes do
        get "/", to: "home#index"
      end
    end
  end

  module Controllers
    module Home
      include Stressreport::Controller

      action "Index" do
        def call(params)
        end
      end
    end
  end

  module Views
    module Home
      class Index
        include Stressreport::View

        def render
          "Stressreport!"
        end
      end
    end
  end
end

run Stressreport::Application.new
