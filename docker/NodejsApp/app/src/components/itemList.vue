<script lang="ts">
    import Item from './Item.vue';

    export default {
        name: 'itemList',
        components: {
            Item
        },
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
    <div v-for="item in items" class="itemContainer">
        <Item :title="item.title" :data="item.data" :isFile="item.isFile"></Item>
    </div>
    <div class="agregarItem">
        <img src="../assets/plus.svg" alt="">
        Agregar un archivo
    </div>
</template>

<style>
    .agregarItem{
        border: 1px solid #005;
        border-radius: 4px;
        display: flex;
        cursor: pointer;
        font-size: 20px;
        line-height: 20px;
        font-family: 'Baskerville';
        color:#005;
        padding: 8px;
        align-items: center;
    }
    .agregarItem img{
        width: 32px;
        height: 32px;
    }
</style>