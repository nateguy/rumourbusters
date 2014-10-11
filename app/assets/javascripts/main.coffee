geocoder = new google.maps.Geocoder()
locality = ""
rating_placeholder = 0
currentLat = 22.267
currentLng = 114.188
$ ->
  current_path = window.location.pathname

  if navigator.geolocation

    navigator.geolocation.getCurrentPosition (position) ->

      currentLat = position.coords.latitude
      currentLng = position.coords.longitude
      currentPosition = L.latLng(currentLat, currentLng)
      if $("body.site.index").length
        map.panTo([currentLat, currentLng])

      if $("body.rumours.new").length

        for rumourInfo in $('.mapitem')
            rumourInfo = $(rumourInfo)
            lat = rumourInfo.data('lat')
            lng = rumourInfo.data('lng')
            rumourPosition = L.latLng(lat, lng)
            console.log "dist " + rumourPosition.distanceTo(currentPosition).toFixed(0)
            if rumourPosition.distanceTo(currentPosition).toFixed(0) < 100
              currentLat = lat
              currentLng = lng

              break

        $('#rumour_latitude').val(currentLat)
        $('#rumour_longitude').val(currentLng)
        if currentLat?
          $(".rumor_submit").css("display", "block")

      if $("body.rumours.show").length
        rumourInfo = $('.mapitem')[0]
        lat = $(rumourInfo).data('lat')
        lng = $(rumourInfo).data('lng')
        rumourPosition = L.latLng(lat, lng)
        console.log rumourPosition.distanceTo(currentPosition).toFixed(0)
        if rumourPosition.distanceTo(currentPosition).toFixed(0) < 200
          $("#credible_box").show()

  if $("body.site.index").length

    setupView = (lat, lon) ->
      @map = L.map('map').setView([lat, lon], 16);
      L.tileLayer('http://{s}.tiles.mapbox.com/v3/nateguy.ip5nk518/{z}/{x}/{y}.png', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18
      }).addTo(map)

    panMap = (lat, lon, map) -> map.panTo([lat, lon])

    showGuideMarkers = (lat, lon, map, id) ->

      guides = ''
      guideImageLinksForCity = (lat, lon) ->

        buildLink = (id, title) ->
          "<a href='/rumours/#{id}'>#{title}</a><br>"



        for rumourInfo in $('.mapitem')

          rumourInfo = $(rumourInfo)

          if lat == rumourInfo.data('lat') && lon == rumourInfo.data('lng')
            link = buildLink(rumourInfo.data('id'), rumourInfo.data('title'))

            guides = guides + link

        guides


      header = "<h3>Rumours here:</h3>"
      content = guideImageLinksForCity(lat, lon)



      popupContent = header + '<br>' + content
      marker = L.marker([lat, lon]).addTo(map)
      marker.bindPopup(popupContent).openPopup()

    showPointers = (map) ->
      mapitems = $('.mapitem')

      for i in mapitems
        i = $(i)
        lat = i.data('lat')
        lon = i.data('lng')
        id = i.data('id')
        showGuideMarkers(lat, lon, map, id)

    mapitems = $('.mapitem')
    setupView( currentLat, currentLng)



  if $("body.site.index").length
    showPointers(map)


onMapClick = (e) ->
  console.log "onMapClick"
  codeLatLng(e)



