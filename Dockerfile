FROM websphere-liberty:microProfile
COPY server.xml /config/
ADD target/Texti.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/
ENV LICENSE accept
EXPOSE 9080

## Running the container locally
# mvn clean install
# docker build -t getstartedjava:latest .
# docker run -d --name myjavacontainer texti
# docker run -p 9080:9080 --name myjavacontainer texti
# Visit http://localhost:9080/Texti/

## Push container to IBM Cloud
# docker tag getstartedjava:latest registry.ng.bluemix.net/<my_namespace>/texti:latest
# docker push registry.ng.bluemix.net/<my_namespace>/texti:latest
# ibmcloud ic images # Verify new image
