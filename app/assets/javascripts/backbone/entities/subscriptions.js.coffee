@Rss.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	API =
		getSubscriptionEntities: ->
			new Backbone.Collection [
				{ id: 1, name: "foo", description: "foo foo foo foo" }
				{ id: 2, name: "bar", description: "bar bar bar bar" }
				{ id: 3, name: "baz", description: "baz baz baz baz" }
			]

	App.reqres.setHandler "subscription:entities", ->
		API.getSubscriptionEntities()