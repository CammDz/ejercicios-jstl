# Deploy a GitHub + Render con Supabase

Este proyecto es JSP + JSTL sobre Tomcat 9. Render lo corre con Docker.

## 1. Supabase (gratis)

1. Crea proyecto en https://supabase.com > New project.
2. Ve a **SQL Editor > New query**, pega el contenido de `supabase.sql` y dale **Run**.
   Verifica: `Table Editor > empleados` debe mostrar 4 filas.
3. Ve a **Project Settings > Database** y copia:
   - **Host**, **Database password** (la que definiste al crear el proyecto), usuario `postgres`.
   - Arma la URL JDBC:
     - Directa: `jdbc:postgresql://db.XXXX.supabase.co:5432/postgres?sslmode=require`
     - Pooler (recomendado si Render free se queda sin conexiones, puerto 6543):
       `jdbc:postgresql://db.XXXX.supabase.co:6543/postgres?sslmode=require`
   - Si tu password tiene caracteres especiales (`@`, `?`, `&`, `#`), codificalos (%40, %3F, %26, %23).

## 2. GitHub

```powershell
cd C:\xampp\tomcat\webapps\JSTL
git init -b main
git add .
git commit -m "Ejercicios JSTL + deploy Render/Supabase"
gh repo create ejercicios-jstl --public --source=. --push
```

## 3. Render

Opcion A (Blueprint):
1. En https://dashboard.render.com > **New > Blueprint** > conecta el repo `ejercicios-jstl`.
2. Render lee `render.yaml` y crea el Web Service.
3. Cuando pida `DB_URL` y `DB_PASSWORD`, pega los de Supabase. `DB_USER` queda `postgres`.
4. **Deploy**. La URL queda `https://ejercicios-jstl.onrender.com`.

Opcion B (manual):
1. **New > Web Service** > selecciona el repo > **Runtime: Docker**.
2. Agrega env vars:
   - `DB_DRIVER=org.postgresql.Driver`
   - `DB_URL=<tu jdbc de supabase>`
   - `DB_USER=postgres`
   - `DB_PASSWORD=<tu password>`
3. Deploy.

Notas:
- Sin `DB_URL` el deploy igual funciona: ejercicios 1-7 OK, el 8 muestra "No se pudo consultar" hasta que configures Supabase. Es el comportamiento esperado.
- Render free se duerme tras inactividad: la primera carga tarda ~1 min.
- En local no cambia nada: sin `DB_URL` se usa `WEB-INF/jspf/conexion.jspf` (MySQL localhost).
- `WEB-INF/lib` ya incluye `jstl-1.2.jar` y `mysql-connector-j-9.7.0.jar`. El driver Postgres lo descarga el Dockerfile en el build.
