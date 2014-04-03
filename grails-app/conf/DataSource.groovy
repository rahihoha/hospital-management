dataSource {
	pooled = true
GenXmlParser parser = new GenXmlParser()
	driverClassName = "org.postgresql.Driver"
	username = parser.getValue("DBLogin","resources/appConfig.xml")
	password = parser.getValue("DBPwd","resources/appConfig.xml")
	//username="postgres"
	//password="postgres"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update"
		url="jdbc:postgresql://localhost:5432/hospital"
		//url="jdbc:postgresql://10.22.0.95:5432/OCMMS-CHANDIGARH"
			
		}
	}
	
	production {
		dataSource {
			GenXmlParser parser = new GenXmlParser()
			dbCreate = "update"
		url = parser.getValue("dbConfig-prod","resources/appConfig.xml")
	//url="jdbc:postgresql://10.22.0.95:5432/OCMMS-CHANDIGARH"
		}
	}
}