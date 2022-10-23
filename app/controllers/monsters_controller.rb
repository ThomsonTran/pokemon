class MonstersController < ApplicationController
    protect_from_forgery

    def index
        render json: Monster.all
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
