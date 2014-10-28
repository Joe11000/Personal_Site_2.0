
$(function(){

//   $(".coding_language").each(function(element, index){
//     $(this).click(function(){

//       $.ajax({
//         url: "<%= home_projects_show_path %>",
//         data: {"language": this.innerHTML},
//         success: function(){alert("worked")},
//         dataType: "json"
//       });
//     })
//   });



  $("#projects-side-column .side-bar-project-name").each(function(element, index){
    $(this).click(function(){

      $.ajax({
        type: "POST",
        url: "<%= home_projects_show_path %>",
        data: {"language": this.innerHTML},
        success: function(){alert("worked")}, //success/error/complete
        error: function(stuff){alert("DIDN'T worked", "'" + stuff + "'")},
        dataType: "json"
      });
    })
  });




});


