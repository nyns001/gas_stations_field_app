# Estructura de exportación

Al pulsar **Exportar → Descargar Excel + fotos**, la app genera:

```
Moeve_Field_Alicante_AAAA-MM-DD.zip
├── Moeve_Field_Alicante_AAAA-MM-DD.xlsx
├── LEEME.txt
└── Fotos/
    ├── Alicante/
    │   └── AAAA-MM-DD/
    │       ├── CONCESION_12345/
    │       │   ├── opt_defect_...jpg
    │       │   └── access_...jpg
    │       └── CONCESION_67890/
    └── Corredor_Madrid_Alicante/
        └── AAAA-MM-DD/
            └── CONCESION_.../
```

El Excel incluye la ruta relativa exacta de cada foto en `Photos_Index`.

> En el prototipo la información se guarda primero localmente en el navegador/iPhone y se consolida al exportar. La versión corporativa debe sustituir este paso por escritura automática en SharePoint/Dataverse.
