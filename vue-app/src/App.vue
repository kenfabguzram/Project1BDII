<script lang="ts">
//import Item from './components/Item.vue'
  export default {
    name: 'itemList',
    data(){
      return {
        items : [
          { title: 'Archivo 1', data: 'Datos del archivo 1', isFile: true },
          { title: 'Archivo 2', data: 'Datos del archivo 2', isFile: true },
          { title: 'Carpeta 1', data: 'Datos de la carpeta 1', isFile: false }
        ]    
      }
    }
  }
</script>

<template>
  <!--<Item title="Nombre del archivo" data="Datos del archivo" :isFile="true"></Item>
  <Item title="Nombre del archivo2" data="Datos del archivo3" :isFile="true"></Item>
  <Item title="Nombre de la carpeta" data="Datos de la carpeta" :isFile="false"></Item>-->
  <div v-for="item in items">
    <p class="title">{{ item.title }}</p>
    <p class="data"> {{ item.data }}</p>
  </div>
</template>

<style scoped>
  .title{
    color:black
  }
  .data{
    color:cadetblue
  }
</style>
