class ImagesController < InheritedResources::Base
	protected
	def image_params
		params.require(:image).permit!
	end
end
