Template.current_page.helpers
    current_page_is: (name) ->
        currentPage = Session.get('current_page') ? 'home'
        currentPage is name
