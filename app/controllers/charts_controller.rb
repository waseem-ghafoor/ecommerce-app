class ChartsController < InheritedResources::Base

  private

    def chart_params
      params.require(:chart).permit(:name)
    end

end
