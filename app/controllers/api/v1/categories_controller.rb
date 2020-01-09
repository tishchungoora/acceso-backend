class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all.reject{|cat| cat.children.empty?}
        render json: categories
    end

end
