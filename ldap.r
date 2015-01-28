library(RCurl)
val <- getURL('ldap://ldap.domain.net/DC=domain,DC=net?sAMAccountName?sub?(employeeID=0123456)',
              .opts=list(userpwd = "DOMAIN\\domainid:password")) 