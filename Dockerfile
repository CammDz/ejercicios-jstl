FROM tomcat:9.0-jdk17-temurin

# Limpia las apps de ejemplo de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia este proyecto como app ROOT (queda en / )
COPY . /usr/local/tomcat/webapps/ROOT/
# Limpia del webapp los archivos de build que no deben servirse
RUN rm -f /usr/local/tomcat/webapps/ROOT/Dockerfile \
          /usr/local/tomcat/webapps/ROOT/docker-entrypoint.sh \
          /usr/local/tomcat/webapps/ROOT/render.yaml \
          /usr/local/tomcat/webapps/ROOT/.dockerignore \
          /usr/local/tomcat/webapps/ROOT/.gitignore

# Driver PostgreSQL para Supabase (el MySQL y JSTL ya vienen en WEB-INF/lib)
# Se descarga en build para no obligar a commitear binarios nuevos
RUN apt-get update && apt-get install -y --no-install-recommends curl \
 && curl -fSL -o /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/postgresql-42.7.4.jar \
      https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.4/postgresql-42.7.4.jar \
 && rm -rf /var/lib/apt/lists/* \
 && ls -lh /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN sed -i 's/\r$//' /usr/local/bin/docker-entrypoint.sh && chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
