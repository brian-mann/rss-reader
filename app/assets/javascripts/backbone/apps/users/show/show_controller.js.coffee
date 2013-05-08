@Rss.module "UsersApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	class Show.Controller extends Marionette.Controller

		initialize: ->
			## conver to layout
			showView = new Show.View
			
			subscriptions = App.request "current:user:subscription:entities"
			##make a request here for user_subscriptions#list view and insert into the layouts region
			##or make a command and pass the layout + the subscriptions			
			
			App.profileRegion.show showView		