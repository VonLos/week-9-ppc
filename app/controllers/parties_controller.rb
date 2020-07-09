class PartiesController < ApplicationController
    def index
        @parties = Party.all
    end

    def show
        @party = Party.find(params[:id])
    end

    def new
        @party = Party.new
    end
end
