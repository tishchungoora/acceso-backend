class Api::V1::BoardsController < ApplicationController
    before_action :protected_action, only: [:create]

    def index
        boards = Board.all
        render json: boards
    end

    def show
        board = Board.find(params[:id])
        render json: board
    end

    def create
        # Create board with basic essential data
        board = Board.create(title: params[:title], behaviour_id: params[:behaviour_id], user_id: params[:user_id])

        board.user = @current_user

        # Create board-card relationships
        board_cards = params[:cards]
        board_cards.each do |card|
            BoardCard.create(board_id: board.id, card_id: card[:id])
        end
        
        if board
            render json: board, status: :created
        else
            render json: board.errors, status: :unprocessable_entity
        end
    end

    def destroy
        # destroy existing board-card relationships
        board_cards = BoardCard.where(board_id: params[:id])
        board_cards.each do |boardcard|
            boardcard.destroy
        end
        
        # destroy board
        board = Board.find(params[:id])
        board.destroy

        # render boards json
        boards = Board.all
        render json: boards
    end

    private

    def board_params
        params.require(:board).permit(:title, :behaviour_id, :cards)
    end

end
