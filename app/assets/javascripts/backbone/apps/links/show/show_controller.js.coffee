@Rss.module "LinksApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	class Show.Controller extends Marionette.Controller
		
		initialize: (options) ->
			{region, link} = options
			
			linkView = new Show.Link
				model: link
			
			region.show linkView