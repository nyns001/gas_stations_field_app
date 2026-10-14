# V4.3 · Azure field setup

## Qué cambia

- La ruta de visitas se solicita a **Azure Maps Route Directions**.
- La app sigue autoguardando respuestas en `localStorage` y fotos en `IndexedDB`.
- En iPhone, el botón de salida es **Enviar visita**: no descarga Excel en el móvil.
- El backend genera el envío mediante **Microsoft Graph** a `fuelmanagement@moeveglobal.com`.

## App settings necesarias en Azure

En la Static Web App / Function API configurar secretos de servidor:

- `AZURE_MAPS_KEY`
- `GRAPH_TENANT_ID`
- `GRAPH_CLIENT_ID`
- `GRAPH_CLIENT_SECRET`
- `GRAPH_SENDER_MAILBOX` (buzón autorizado para enviar)

La aplicación registrada en Entra ID necesita permiso de aplicación **Mail.Send** y consentimiento de administrador. El buzón de salida debe estar permitido por la política corporativa.

## Asunto de email

`NOMBRE ESTACION - NUMERO CONCESION - AAAA-MM-DD - VISITA`

Destinatario fijo: `fuelmanagement@moeveglobal.com`.

## Persistencia

Cerrar Safari no borra los datos: las respuestas se escriben después de cada cambio y las fotos en IndexedDB. Sin embargo, esta es persistencia local del navegador. Para uso corporativo definitivo se recomienda sincronizar también con SharePoint/Dataverse/Azure Storage.

**Muy importante:** usar siempre la misma URL HTTPS publicada. Cambiar de dominio/IP crea otro origen del navegador y por tanto otro almacenamiento local.

## Entre estaciones

No hay que descargar nada. Guardar visita crea una sesión y se puede continuar horas o días después desde el mismo iPhone y la misma URL.
