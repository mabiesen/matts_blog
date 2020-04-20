import hljs from 'highlightjs'
document.addEventListener("turbolinks:load", () => {
  hljs.initHighlighting.called = false;
  hljs.initHighlighting();
});
