build:
	Rscript -e 'blogdown::build_site()'

test:
	Rscript -e 'rsconnect::deploySite(render = "none", siteName = "Dashboardtools-test",server = "poker-publi.rte-france.com")'
	
prod:
	Rscript -e 'rsconnect::deploySite(render = "none", siteName = "dashboardtools", account = "dervieuxchr", server = "poker-publi.rte-france.com")'
	
clean: 
	rm -Rf docs