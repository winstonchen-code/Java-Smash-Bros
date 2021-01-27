class StagesController < ApplicationController
    def index
        render json: Stage.all.to_json({
            except: [:created_at, :updated_at]
        })
    end
    
    def show
        stage = Stage.find(params[:id])
        render json: stage.to_json(stage_serializer_options)
    end

    def create 
        stage = Stage.create(stage_params)
        render json: stage
    end

    def update
        Stage.find(params[:id]).update(stage_params)
        render json: Stage.find(params[:id])
    end

    private

    def stage_params
        params.require(:stage).permit(:name, :image, :music, :maxplayers, :likes)
    end

    def stage_serializer_options()
        {
            include: {
                fighters: {except: [:created_at, :updated_at]}
            },
            except: [:created_at, :updated_at]
        }
    end 
    
end


