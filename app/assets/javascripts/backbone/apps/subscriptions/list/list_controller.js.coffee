@Rss.module "SubscriptionsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Controller extends Marionette.Controller

		initialize: ->
			subscriptions = App.request "current:user:subscription:entities"
			
			listView = new List.Subscriptions
				collection: subscriptions
				
			## make this a layout with a region for the links show, make a App.vent.trigger when one of these links is clicked and pass the link to the show
			
			App.contentRegion.show listView