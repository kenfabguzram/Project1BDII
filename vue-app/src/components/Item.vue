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
        <div class="parallel-container">
            <div class="info-container">
                <div class="image-container">
                    <img src="../assets/file.svg" v-if="isFile" alt="" class="logo">
                    <img src="../assets/folder.svg" v-else alt="" class="logo">
                </div>
                <div class="data-container">
                    <p class="item-name">{{ title }}</p>
                    <p class="item-data">{{ data }}</p>
                </div>
            </div>
            <div class="buttons-container">
                <button class="button"><img src="../assets/minus.svg" class="button-image"></button>
                <button class="button"><img src="../assets/edit.svg" class="button-image"></button>
            </div>    
        </div>
        
    </div>
</template>

<style>
    .item-container{
        border: 1px solid #005;
        border-radius: 4px;
        display: flex;
        padding: 8px;
        cursor: pointer;
        margin-bottom: 8px;
    }
    .parallel-container{
        display: flex;
    }
    .info-container{
        float: left;
    }
    .buttons-container{
        float: right;
        margin-left: 4px;
        display: flex;
        align-items: center;
    }
    .button-image{
        width: 16px;
        height: 16px;
    }
    .button{
        background-color: #FFF;
        border: 1px solid #005;
        border-radius: 2px;
        cursor: pointer;
        margin-right: 2px;
    }
    .button:active, .button:active img{
        background-color: #AAA;
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
    .logo{
        height: 32px;
        width: 32px;
    }

</style>