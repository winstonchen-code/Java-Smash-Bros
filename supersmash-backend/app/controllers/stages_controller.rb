class StagesController < ApplicationController
    def index
        render json: Stage.all.to_json({
            except: [:created_at, :updated_at]
        })
    end
end
