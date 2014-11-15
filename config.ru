require 'lotus'
require_relative "application"
run Lotus::Router.new {
  mount Stressreport::Application, at: '/'
}
