import CodeMirror from 'codemirror'
document.addEventListener("turbolinks:load", () => {
  $("textarea").each(function() {
    CodeMirror.fromTextArea($(this).get(0), {
      lineNumbers: true,
      mode: "htmlmixed"
    });
  });
});
