response = RestClient.get('https://api.open5e.com/spells/')

spells_data = JSON.parse(response.body)
spells = spells_data["results"]


binding.pry
