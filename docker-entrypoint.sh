#!/bin/sh
set -e

APP_DIR=/usr/local/tomcat/webapps/ROOT
CONEXION_FILE="$APP_DIR/WEB-INF/jspf/conexion.jspf"

# 1) Puerto de Render: usa $PORT (Render lo inyecta, por defecto 10000).
#    Tomcat trae 8080 por defecto en server.xml.
PORT_TO_USE=${PORT:-8080}
echo "Usando puerto: $PORT_TO_USE"
sed -i "s/port=\"8080\"/port=\"$PORT_TO_USE\"/" /usr/local/tomcat/conf/server.xml || true

# 2) Base de datos: si hay DB_URL (Supabase en Render), regenera conexion.jspf.
#    En local (sin DB_URL) se respeta el archivo que ya tienes (MySQL localhost).
if [ -n "$DB_URL" ]; then
  DB_DRIVER_TO_USE=${DB_DRIVER:-org.postgresql.Driver}
  echo "Configurando conexion.jspf con driver $DB_DRIVER_TO_USE"
  cat > "$CONEXION_FILE" <<EOF
<sql:setDataSource var="empleados" driver="$DB_DRIVER_TO_USE"
 url="$DB_URL"
 user="$DB_USER" password="$DB_PASSWORD" />
EOF
  echo "--- conexion.jspf generado (url oculta por seguridad) ---"
else
  echo "Sin DB_URL: se conserva conexion.jspf local (MySQL localhost)."
  echo "Ejercicios 1-7 funcionaran; el 8 necesita DB_URL en Render."
fi

exec "$@"
