# Nexus Maven Version Checker

### inputs
**REPOSITORY** - Nexus repository name.  
**FORMAT** - Library format (ex. maven2, npm).  
**GROUP** - Library group id.  
**NAME** - Library name(or artifact id).
**VERSION** - Search version.  
**NEXUS_HOST** - Nexus host url [http(or https)://{hostname}:{port}].  
**AUTH_BASE64** - Encoded(base64) username and password.   
![img.png](img.png)

### outputs
**is_component** - true or false.