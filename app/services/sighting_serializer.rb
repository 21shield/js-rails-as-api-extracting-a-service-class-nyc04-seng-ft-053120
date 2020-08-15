class SightingSerializer
    # define initialize method like a regular ruby class
    def initialize(sighting_obj)
        # takes a variable and asigns it to instance variable
        # in order for other files to get access has to be a instance variable
        @sighting = sighting_obj
    end
    # write a method that will call the method "to_json" on that current instance
    # you want this to handle the inclusion of attrs/ exclusions
    def to_serialzed_json
       options = {
        #    outer key 1
           include: {
               bird:{
                   only: [:name, :species]
               },
               location: {
                   only: [:latitude, :longitude]
               }
           },
        #    outer key 2
           except: [:updated_at]
       }
       @sighting.to_json(options)
    end
end