
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

  var projects_show_path = "http://localhost:3000/home/projects/show"
  var previous_current_project = undefined;

  $(".side-bar-listed-project-names").each(function(){
    $(this).click(function(){

  //     $.ajax({
  //       type: "POST",
  //       url: projects_show_path,
  //       data: {"language": $(this).find('p.data-id').attr('data-id') },
  //       success: function(){alert("worked")}, //success/error/complete
  //       error: function(stuff){alert("DIDN'T worked", "'" + stuff + "'")},
  //       dataType: "json"
  //     });

      // console.log($(this);

      if(previous_current_project != undefined)
      {
        previous_current_project.removeClass('current-project')
      }

      $(this).addClass('current-project');
      previous_current_project = $(this);

    });
  });


});
