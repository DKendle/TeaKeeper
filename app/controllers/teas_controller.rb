class TeasController < ApplicationController
    before_action :auth_required

    def show
    end

    def new
        @tea = Tea.new
        @tea.reviews.build(fav_way_to_drink: "ex. iced or hot")
    end

    def create
        @tea = Tea.create(tea_params)
        binding.pry
        redirect_to tea_path(@tea)
    end



    private

    def tea_params
        params.require(:tea).permit(:name, :type, :flavor, :store,
            reviews_attributes: [
                :fav_way_to_drink
            ]
        )
    end
end
