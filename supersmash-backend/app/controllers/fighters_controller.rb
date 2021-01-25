class FightersController < ApplicationController
    def index
        render json: Fighter.all.to_json(fighter_serializer_options)
    end

    def show
        fighter = Fighter.find(params[:id])
        render json: fighter.to_json(fighter_serializer_options)
    end

    def create 
        fighter = Fighter.create(fighter_params)
        render json: fighter 
    end

    def destroy
        fighter = Fighter.find(params[:id])
        fighter.destroy 
        render json: fighter
    end

    private

    def fighter_params
        params.require(:fighter).permit(:name, :series, :image, :description)
    end

    def fighter_serializer_options()
        {
            include: {
                stages: {except: [:created_at, :updated_at]}
            },
            except: [:created_at, :updated_at]
        }
    end 
    
end
