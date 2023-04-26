<template>
  <div>
    <input type="file" @change="handleFileUpload">
  </div>
</template>

<script>
import axios from 'axios';

export default {
  methods: {
    async handleFileUpload(event) {
      const file = event.target.files[0];
      const formData = new FormData();
      formData.append('file', file);
      try {
        await axios.post('http://localhost:5000/upload_file', formData, {
          headers: {
            'Content-Type': 'multipart/form-data'
          }
        });
        console.log('Archivo enviado con éxito');
      } catch (err) {
        console.error('Error al enviar archivo:', err);
      }
    }
  }
}
</script>
Este código configura un file manager en Vue.js que permite al usuario seleccionar un archivo para cargar. Cuando el usuario selecciona un archivo, el archivo se envía al endpoint /upload_file en el servidor Flask utilizando el cliente de Python que configuramos anteriormente.

Ten en cuenta que debes actualizar la URL del servidor Flask en el ejemplo de Vue.js con la dirección de tu propia REST API en Flask alojada en tu contenedor de Azure.






