class BoardController < ApplicationController
    before_action :authenticate_user!

    def index
        @texts = Board.all
    end

    def new
        @board = Board.new
    end

    def create
    end
end