class BoardsController < ApplicationController
    before_action :authenticate_user!

    def index
        @boards = Board.all
    end

    def new
        @board = Board.new
    end

    def create
        @board = current_user.boards.new(board_params)
        if @board.save
            # 保存成功 → インデックスにリダイレクト
            redirect_to boards_path, notice: "Board was successfully created."
        else
            # 保存失敗 → 新規作成フォームに戻る
            render :new
        end
    end

    private

    def board_params
        params.require(:board).permit(:tittle, :description)
    end
end
