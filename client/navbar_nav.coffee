Template.navbar_nav.helpers
    pages: ->
        allowedPages = []
        currentPage = Session.get('current_page') ? Pages[0]
        capChar = (str, i) -> "#{str.charAt(i).toUpperCase()}#{str.slice(1)}"

        for page, i in Pages
            allowedPages[i] =
                url: if page is 'home' then '' else page
                title: capChar page, 0
                active: if currentPage is page then 'active' else ''
        allowedPages

Template.navbar_nav.rendered = ->
    $(@firstNode).on 'click', 'a', (e) ->
        $target = $ e.target
        attr = $target.attr 'href'
        e.preventDefault()
        App.navigate('', trigger: yes)


