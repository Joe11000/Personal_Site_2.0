// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// $(function(){
//   alert('blog/entries loaded')
// });

$(function(){

  $("[data-id='new_comment_body']").on('input', function(e){
    enableDisableCommentButton();
  });

  $("[data-id='new_comment_author_name']").on('input', function(e){
    enableDisableCommentButton();
  });

  function enableDisableCommentButton() {
    if( $("[data-id='new_comment_body']").val().length > 0 &&
        $("[data-id='new_comment_author_name']").val().length > 0
      )
    {
      $("[data-id='new_comment_submit']").removeClass('disabled')
    }
    else
    {
      $("[data-id='new_comment_submit']").addClass('disabled')
    }
  }
});
