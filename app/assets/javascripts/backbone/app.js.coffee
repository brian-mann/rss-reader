@Rss = do (Backbone, Marionette) ->
	
	App = new Marionette.Application
	
	App.on "initialize:before", (options = {}) ->
		options.currentUser = 1000 ## hack
		@subscriptions = App.request "subscription:entities", options.currentUser
	
	App.reqres.setHandler "current:user:subscription:entities", ->
		App.subscriptions	
	
	App.addRegions
		profileRegion: "#profile-region"
		contentRegion: "#content-region"
	
	# App.addInitializer ->
	# 	App.module("HeaderApp").start()
	# 	App.module("FooterApp").start()
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
			# @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
	
	App