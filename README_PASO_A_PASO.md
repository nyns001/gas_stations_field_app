# Moeve Field Intelligence V3.4 — Cómo abrirla

1. Descomprime la carpeta.
2. En Visual Studio Code: **File > Open Folder** y selecciona `moeve_field_v3_4_route_customer`.
3. Abre `index.html`.
4. Clic derecho dentro del código > **Open with Live Server**.
5. La URL debe empezar por `http://127.0.0.1:...`, no por `C:/Users/...`.

## Flujo de uso

La app abre en **Ruta**. Primero prepara las paradas. El **Nº de concesión** es la clave de negocio principal para las estaciones Moeve: puedes introducir un número ya guardado para abrir su estación o asociar uno nuevo a la estación Moeve seleccionada.

Desde cada parada pulsa **Briefing** para pasar al Copiloto. El briefing debe centrarse en customer journey, customer voice, competencia y cambios competitivos. Después, al llegar, entra en **Visita** para validar las hipótesis, añadir fotos y generar TO DO.

## Logos

Los pins del mapa no muestran nombres recortados. Usan un símbolo visual por operador; si el operador no está reconocido se muestra un icono neutro de estación. Para producción se sustituirán estos símbolos por los assets oficiales de marca autorizados.

## Excel

El botón de descarga genera un XLSX con el Nº de concesión incorporado en las tablas relevantes.


## V3.6 logo fix
- Los logos del mapa se han limpiado para que se vea únicamente la marca visual, sin fondos cuadrados o textos extraños.


## V3.7
- Explicaciones clicables para métricas y etiquetas Relevante/Potencial/Contexto.
- Pestaña Cliente ahora explica por qué una EESS parece compartir journey y qué datos se usan.
- Guardar visita abre un resumen con comentarios, fotos, sugerencias de mejora y TO DO seleccionables.
- Logos embebidos como data URI para evitar fallos de carga en el mapa.


## V3.8
- El mapa ya no usa iconos de surtidor como fallback.
- Se reconocen más rótulos de Canarias y se muestran marcas visuales compactas.
- Las fichas de operadores conocidos muestran promociones/señales actuales con fuente y ámbito.


## V3.9 · Brand Resolution Layer
- El mapa usa la identidad visual de la marca resuelta, no el texto bruto de MITECO.
- Prioridad de resolución: corrección manual > rótulo público > matching con red/dirección verificada > sin resolver.
- Para estaciones no resueltas se muestra un punto neutro, nunca un icono de surtidor inventado.
- Desde cualquier popup se puede pulsar `Corregir operador`.
- La corrección queda guardada localmente y se exporta al Excel.
- El Excel incluye una hoja `Brand_Resolution` con rótulo público, marca resuelta, confianza, fuente y override manual.


# V4.0 · Piloto Madrid → Alicante (iPhone)

## Qué carga
- Inventario MITECO en vivo de Madrid, Cuenca, Albacete y Alicante.
- Ruta real Madrid → Alicante mediante OSRM; si falla, usa una geometría de respaldo.
- `Piloto completo`: todas las EESS a ≤8 km del corredor + todas las EESS de la provincia de Alicante.
- `Ruta ≤8 km`: solo estaciones próximas al trayecto.
- `Alicante provincia`: toda la provincia.

## iPhone
Para pruebas esta semana, PC e iPhone pueden estar en la misma Wi‑Fi y abrir la URL de Live Server usando la IP local del PC, por ejemplo `http://192.168.1.45:5500`. Para uso sin PC, desplegar la carpeta en HTTPS (por ejemplo Azure Static Web Apps). En Safari: Compartir → Añadir a pantalla de inicio.

La app guarda en caché el último inventario MITECO cargado para poder recuperar los datos de estaciones si la API falla temporalmente. El mapa base sigue requiriendo conexión a internet.


## V4.1 — Logos + iPhone
- Actualizados los marcadores de Moeve, Repsol, Shell, bp, Ballenoil, Galp, Alcampo y Plenergy según la identidad visual observada en sus webs oficiales.
- Los símbolos se dibujan dentro de la app, por lo que no dependen de cargar favicons externos.
- Incluida configuración `.vscode/settings.json` para que Live Server escuche en `0.0.0.0`.
- Incluidos `ABRIR_EN_IPHONE.md` y `VER_IP_WINDOWS.bat`.


## V4.2 · Committee Ready
- El mismo asset de marca se usa en mapa y listas.
- Moeve, Repsol, Ballenoil, Galp y Plenergy apuntan a assets publicados por sus webs corporativas/oficiales; Shell, bp y Alcampo usan fuente oficial online con fallback local.
- `Exportar` ofrece Excel o paquete ZIP completo.
- El ZIP contiene `Moeve_Field_Alicante_AAAA-MM-DD.xlsx` y fotos en `Fotos/Zona/AAAA-MM-DD/CONCESION_numero/`.
- Si una foto pertenece a una estación sin nº de concesión, la exportación completa se bloquea y pide completar el dato en Ruta.
- Excel incorpora `Visit_Sessions` y `Photos_Index` con `Zone`, `Visit_Date`, `Concession_No` y `Relative_Path`.


## V4.3 Field Sync
- Ruta de visitas preparada para Azure Maps Route Directions.
- Estado visible de autoguardado.
- Cierre de pestaña conserva respuestas/fotos en el mismo dispositivo + URL.
- No es necesario descargar Excel entre estaciones.
- En iPhone, el botón de salida envía una visita por email mediante backend Azure/Microsoft Graph.
- Asunto: `NOMBRE ESTACION - NUMERO CONCESION - FECHA - VISITA`.
- El Excel adjunto es específico de la estación y las fotos de esa estación se adjuntan al mismo correo.
- Ver `AZURE_FIELD_SETUP.md` para la configuración que debe hacer IT.
