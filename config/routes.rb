Rails.application.routes.draw do
  
  # FIXME: Remains protect the endpoints to be used only for our tenderly
  get "bot/send_message"
  # FIXME: Endpoints for read tenderly response
  get "bot/read"
  post "bot/read"
end
