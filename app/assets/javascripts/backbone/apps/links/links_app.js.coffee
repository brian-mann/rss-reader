@Rss.module "LinksApp", (LinksApp, App, Backbone, Marionette, $, _) ->
	
	API =
		list: ->
			new LinksApp.List.Controller
		
		show: (link, region) ->
			new LinksApp.Show.Controller
				region: region
				link: link

	App.commands.setHandler "links:list", ->
		API.list()
	
	App.commands.setHandler "link:show", (link, region) ->
		API.show link, region
	