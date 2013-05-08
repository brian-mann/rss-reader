@Rss.module "SubscriptionsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Subscriptions extends Marionette.ItemView
		template: "subscriptions/list/subscriptions"