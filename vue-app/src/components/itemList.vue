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
    <div v-for="item in items" class="itemContainer">
        <div class="imageContainer">
            <img src="../assets/file.svg" v-if="item.isFile" alt="">
            <img src="../assets/folder.svg" v-else alt="">
        </div>
        <div class="dataContainer">
            <p class="title">{{ item.title }}</p>
            <p class="data"> {{ item.data }}</p>
        </div>
        
    </div>
</template>

<style>
    .itemContainer{
        border: 1px solid #005;
        border-radius: 8px;
        display: flex;
        padding: 8px;
    }
    .imageContainer{
        width: fit-content;
        height: 100%;
        float: left;
    }
    .dataContainer{
        width: auto;
        height: 100%;
        float: right;
        margin-left: 8px;
    }
    .title{
        font-size: 20px;
        line-height: 20px;
        font-family: 'Baskerville';
        color:#005;
    }
    .data{
        font-size: 12px;
        line-height: 20px;
        font-family: 'Baskerville';
        color: #005;
    }
</style>