defmodule Router do
  use Phoenix.Router, port: 4000

  get "pages/:page", PagesController, :show, as: :page
  get "files/*path", FilesController, :show
  resources "users", UsersController
  resources "users/:user_id/comments", CommentsController
end

