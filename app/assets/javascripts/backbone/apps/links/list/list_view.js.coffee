@Rss.module "LinksApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Links extends Marionette.Layout
		template: "links/list/links"
		
		regions:
			articleRegion: "#article-region"
		
		events:
			"click span" : (e) -> @trigger "link:clicked", $(e.target).data("id")