<script lang="ts">
    import Item from './Item.vue';

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
    <div v-for="item in items">
        <p>{{ item.title }}</p>
        <p> {{ item.data }}</p>
    </div>
</template>

<style>
    /*#app {

    }*/
</style>