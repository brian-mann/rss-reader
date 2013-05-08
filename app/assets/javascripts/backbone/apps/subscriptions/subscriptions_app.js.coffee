@Rss.module "SubscriptionsApp", (SubscriptionsApp, App, Backbone, Marionette, $, _) ->
	
	class SubscriptionsApp.Router extends Marionette.AppRouter
		appRoutes:
			"users/:id/subscriptions"	: "list"
		
		before: (id) ->
			App.execute "user:show", id
		
	API =
		list: (id) ->
			console.log "listing subscriptions"
			new SubscriptionsApp.List.Controller

	App.addInitializer ->
		new SubscriptionsApp.Router
			controller: API