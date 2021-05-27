class BooksController < ApplicationController
  def index
    response = HTTP.headers("X-Api-Key" => "Rails.application.credentials.books_api_key").get("https://www.googleapis.com/books/v1/volumes?q=#{params[:search]}")
    render json: response.parse(:json)["items"]
  end
end
