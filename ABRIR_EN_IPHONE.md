# ABRIR EL PILOTO EN IPHONE — PASOS EXACTOS

## Opción A · Probarlo ahora con PC + iPhone en la misma Wi‑Fi

1. Descomprime esta carpeta en tu PC.
2. Abre **Visual Studio Code**.
3. Ve a **File > Open Folder** y selecciona `moeve_field_v4_1_official_logos`.
4. Comprueba que tienes instalada la extensión **Live Server** de Ritwick Dey.
5. En la columna izquierda abre `index.html`.
6. Haz clic derecho dentro de `index.html` y pulsa **Open with Live Server**.
7. Edge/Chrome abrirá algo parecido a `http://127.0.0.1:5500/`.
8. Deja VS Code y Live Server abiertos.
9. En Windows, haz doble clic en `VER_IP_WINDOWS.bat`.
10. Busca la línea **IPv4 de tu adaptador Wi‑Fi**. Ejemplo: `192.168.1.45`.
11. Conecta el iPhone a **la misma red Wi‑Fi que el PC**.
12. En el iPhone abre **Safari**.
13. Escribe exactamente: `http://IP-DEL-PC:5500/`.
    - Ejemplo: `http://192.168.1.45:5500/`
14. Si Windows pregunta si permite acceso de VS Code/Node/Live Server a redes privadas, pulsa **Permitir acceso** para **Redes privadas**.
15. La aplicación debe abrirse en Safari. El mapa se mueve con un dedo y el zoom funciona con dos dedos.

### Si Safari dice que no puede abrir la página
- Confirma que PC e iPhone están en la misma Wi‑Fi.
- Confirma que Live Server sigue ejecutándose.
- Repite `VER_IP_WINDOWS.bat`: la IP puede cambiar.
- En Windows Defender Firewall permite VS Code / Live Server en **red privada**.
- No uses `127.0.0.1` en el iPhone: esa dirección apunta al propio iPhone, no al PC.

## Muy importante para el piloto en carretera
El método anterior **solo funciona mientras el iPhone pueda llegar al PC por la misma red local**. Para usarlo conduciendo Madrid → Alicante sin llevar el PC conectado a la misma red, hay que publicar esta carpeta en una URL **HTTPS**.

Como vuestra empresa usa Microsoft, el destino recomendado es **Azure Static Web Apps** (o un hosting corporativo equivalente). Una vez publicada, el iPhone abrirá una dirección tipo:

`https://moeve-field-pilot....azurestaticapps.net`

Entonces no hace falta VS Code ni PC durante la ruta.

## Añadir a la pantalla de inicio (cuando esté en HTTPS)
1. Abre la URL HTTPS en **Safari**.
2. Pulsa el botón **Compartir** (cuadrado con flecha hacia arriba).
3. Baja y pulsa **Añadir a pantalla de inicio**.
4. Nombre sugerido: `Moeve Field`.
5. Pulsa **Añadir**.
6. Desde ese momento se abre desde su icono como una app.

> En HTTP local puedes probar la web y la cámara. Para una experiencia PWA fiable, instalación y uso fuera de la Wi‑Fi del PC, usa HTTPS.
