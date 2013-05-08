@Rss.module "LinksApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Controller extends Marionette.Controller

		initialize: ->
			links = App.request "current:user:subscription:entities"
			#links.doAggregationToGetLinks()
			
			listLayout = new List.Links
				collection: links
			
			listLayout.on "link:clicked", (id) ->
				link = links.get(id)
				App.execute "link:show", link, listLayout.articleRegion
				
			## make this a layout with a region for the links show, make a App.vent.trigger when one of these links is clicked and pass the link to the show
			
			App.contentRegion.show listLayout