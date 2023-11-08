<script setup>
import { useFetch } from "../../composable/fetch";
import { useGetAttribute } from "../../composable/getAttribute";

const { dynamicAttributes } = useGetAttribute("singlePost");
console.log("dynamicAttributes", dynamicAttributes);
const postId = dynamicAttributes["data-post-id"];

const { data } = useFetch(`http://localhost:3000/api/v1/single-post/${postId}`);
</script>

<template>
  <div>
    <div>
      <img :src="data.image_url" :alt="data.title" />
    </div>
    <h1>{{ data.title }}</h1>
    <p>
      {{ data.content }}
    </p>
  </div>
</template>
