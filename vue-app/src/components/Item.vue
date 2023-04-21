<script lang="ts">
    interface ItemProps{
        title: string;
        data: string;
        isFile: boolean;
    }
    export default {
        props: {
            title: {
                type: String,
                required: true
            },
            data: {
                type: String,
                required: true
            },
            isFile: {
                type: Boolean,
                required: true
            }
        }
    }
</script>

<template>
    <div class="item-container">
        <div class="image-container">
            <img src="../assets/file.svg" v-if="isFile" alt="">
            <img src="../assets/folder.svg" v-else alt="">
        </div>
        <div class="data-container">
            <p class="item-name">{{ title }}</p>
            <p class="item-data">{{ data }}</p>
        </div>
    </div>
</template>

<style>
    .item-container{
        border: 1px solid #005;
        border-radius: 4px;
        display: flex;
        padding: 8px;
    }
    .image-container{
        width: fit-content;
        height: 100%;
        float: left;
    }
    .data-container{
        width: auto;
        height: 100%;
        float: right;
        margin-left: 8px;
    }
    .item-name{
        font-size: 20px;
        line-height: 20px;
        font-family: 'Baskerville';
        color:#005;
    }
    .item-data{
        font-size: 12px;
        line-height: 20px;
        font-family: 'Baskerville';
        color: #005;
    }
</style>