class PartiesController < ApplicationController
    def index
        @parties = Party.all
    end

    def show
        @party = Party.find(params[:id])
    end

    def new
        @party = Party.new
        3.times {@party.parties_supplies.build.build_supply}
    end

    def create
        @party = Party.create(party_params)
        redirect_to party_path(@party)
    end     

    private
    def party_params
        params.require(:party).permit(:name, :date, :private, :category_name, :parties_supplies_attributes => [:supply_id, :quantity, supply_attributes: [:name]])
    end 
end
