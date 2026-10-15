# Sincronizar ordenador ↔ móvil

1. Crea un proyecto gratis en https://supabase.com
2. SQL Editor → pega el contenido de `supabase.sql` → Run.
3. Project Settings → API (o "API Keys"): copia la **Project URL** y la clave **anon / publishable**.
4. Pégalas en `config.js` y haz commit en `main`.
5. Abre la app en el ordenador y en el móvil: lo que subas en uno aparece en el otro.
   El botón ↻ fuerza la sincronización; también se sincroniza sola al abrir la app y al hacer cambios.

Nota: sin login, cualquiera que tenga la URL de la app y la clave puede ver o modificar las fotos.
