initPage = function() {
  $('pre code').each(function(i, block) {
    hljs.highlightBlock(block)
  });
}

$(document).on("turbolinks:load", initPage)
