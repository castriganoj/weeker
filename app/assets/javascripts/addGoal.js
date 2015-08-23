var GoalButton = {
   setup: function() {
       //add in + sign for new goal
      var plusButton = $('<button type="button" class="glyphicon glyphicon-plus btn btn-primary"></button>');
      $('#newGoals').hide()
      plusButton.appendTo($('#listContainer')).attr('id', 'rightBox');
      $(document).on('click', '#rightBox', GoalButton.showGoal);
   }
   
     ,showGoal:function(){
        $('#newGoals').slideToggle( "slow" );
 }
   
/***** just hide and show new goal instead of ajaxing it*********************
 ,getNewGoal: function() {
   $.ajax({
      type: 'Post',
      url: $('#new_goal').attr('action'),
      timeout: 5000,
      success: GoalButton.showNewGoal,
      error: function(xhrObj, textStatus, exception) {
            alert('Error!');
         }
         // 'success' and 'error' functions will be passed 3 args
   });
   
   return (false); //probably won't need this, only for default link actions
   //closeBox
 }
   ,showNewGoal: function(data, requestStatus, xhrObject) {
    // center a floater 1/2 as wide and 1/4 as tall as screen
    var oneFourth = Math.ceil($(window).width() / 4);
    $('#rightBox').
      css({'left': oneFourth,  'width': 2*oneFourth, 'top': 250}).
      html(data).
      show();
    // make the Close link in the hidden element work
   // $('#closeLink').click(MoviePopup.hideMovieInfo);
   // return(false);  // prevent default link action
  }
**************************************************/

}

$( document ).ready(function() {
  $(GoalButton.setup);
});

    