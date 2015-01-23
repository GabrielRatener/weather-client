
O = {}

O.byCityState = (city, state, country)->
	request = new Request()
	request.city = [city, state]
	if country?
		request.city.push country
	request.type 	= const.CITY
	request.id		= newID()
	socket.send(JSON.stringify(request))
	

