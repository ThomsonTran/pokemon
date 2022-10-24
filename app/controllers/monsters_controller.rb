class MonstersController < ApplicationController
    protect_from_forgery

    POKEMON_PER_PAGE = 100

    def index
        @page = params.fetch(:page,0).to_i
        render json: Monster.offset(@page * POKEMON_PER_PAGE).limit(POKEMON_PER_PAGE)
    end

    def create
        monster = Monster.create(monster_params)
        render json: monster
    end

    def update
        monster = Monster.find(params[:id])
        monster.update(monster_params)
        render json: monster
    end

    def destroy
        Monster.destroy(params[:id])
    end

    def monster_params
        params.require(:monster).permit(:number, :name, :type_1, :type_2, :total, :hp, :attack, :defense, :sp_atk, :sp_def, :speed, :generation, :legendary)
    end
end
