# include .env
core: ## setup core
	pip install pipenv
	pipenv shell
setup: ## setup requirements
	pipenv install
	# data-fetch
data-fetch: ## Fetch remote data
	curl -o ./data/csv/owid-covid-data.csv https://covid.ourworldindata.org/data/owid-covid-data.csv
	curl -o ./data/json/covid-timeseries.json https://pomber.github.io/covid19/timeseries.json