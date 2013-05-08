@Rss.module "UsersApp", (UsersApp, App, Backbone, Marionette, $, _) ->
	
	class UsersApp.Router extends Marionette.AppRouter
		appRoutes:
			"users/:id"								:	"show"
		
		before: ->
			App.execute "links:list"
		
	API =
		show: (id) ->			
			new UsersApp.Show.Controller
				id: id

	App.commands.setHandler "user:show", (id) ->
		# console.log "user:show"
		API.show id
	
	App.addInitializer ->
		new UsersApp.Router
			controller: API