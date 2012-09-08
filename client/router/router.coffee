Pages = ['home', 'contents']
Router = Backbone.Router.extend
    routes:
        '': 'query'
        ':query': 'query'
        ':query/:id': 'recipe'

    query: (query) ->
        console.log 'hello'
        query = Pages[0] unless query
        Session.set('current_page', query) if query in Pages
    recipe: (query, doc) ->
        query = Pages[0] unless query
        Session.set 'current_page', 'recipe'
        Session.set 'doc', id


$ ->
    window.App = new Router
    Backbone.history.start pushState: true
