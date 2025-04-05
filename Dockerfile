# Use Tomcat 9 base image
FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into Tomcat
COPY SecureDocs.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080
