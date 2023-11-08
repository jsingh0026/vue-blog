import "./main.scss";

import { createApp } from "vue";
// import Home from "../components/views/Home.vue";

// if (document.querySelector('#home')) {
//   const home = createApp(Home);
//   home.mount('#home');
// }
import Blogs from "../components/views/Blogs.vue";
import SinglePost from "../components/views/SinglePost.vue";

const blogsElement = document.querySelector("#blogs");
console.log(blogsElement);
if (blogsElement) {
  const blog = createApp(Blogs);
  blog.mount(blogsElement);
}

const singlePost = document.querySelector("#singlePost");
if (singlePost) {
  const post = createApp(SinglePost);
  post.mount(singlePost);
}
