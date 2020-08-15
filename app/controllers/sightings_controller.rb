class SightingsController < ApplicationController
    def show
        sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end

    def index
        sightings = Sighting.all
        # render something(json)
        render json:
        # the serialzed method we created has to be on an instance of that class
        # use the method on the instancce you have created
        SightingSerializer.new(sightings).to_serialized_json
    end
end
