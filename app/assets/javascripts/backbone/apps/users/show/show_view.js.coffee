@Rss.module "UsersApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	class Show.View extends Marionette.ItemView
		template: "users/show/user"