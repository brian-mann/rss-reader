@Rss.module "LinksApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	class Show.Link extends Marionette.ItemView
		template: "links/show/link"