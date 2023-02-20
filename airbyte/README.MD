### ¿Qué es Airbyte?
Airbyte es una plataforma de integración de datos de código abierto que ayuda a las empresas a mover y sincronizar datos desde múltiples fuentes a múltiples destinos. Utiliza conectores preconstruidos para conectar con una amplia variedad de orígenes de datos y destinos, y ofrece herramientas de monitoreo y gestión para garantizar la fiabilidad y el rendimiento. En resumen, Airbyte es una solución flexible y escalable para la integración de datos.

### Documentacion
[Airbyte](https://docs.airbyte.com/)

### Pasos para instalar airbyte localmente
1. Instale Docker Engine y el complemento Docker Compose en su estación de trabajo (consulte las instrucciones). 

2. Instalar Git  

3. Después de instalar Docker, puede comenzar inmediatamente localmente ejecutando: 

    -  Clone Airbyte desde GitHub: ```git clone https://github.com/airbytehq/airbyte.git ```

    - Muévete a la carpeta de  Airbyte: ```cd airbyte ```

   - Inicia Airbyte usando el comando:  ```docker compose up –d  ```

4. En tu buscador debes visitar la dirección:  ```http://localhost:8000``` o el puerto que se le asigno.

5. Username: ```airbyte``` y password: ```password ```
 

[Documentacion oficial para instalar](https://docs.airbyte.com/deploying-airbyte/local-deployment/
)