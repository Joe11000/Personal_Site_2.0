
$(function(){


  GLOBAL_VAR = {
    PROJECTS: {
      projects_show_path: "http://localhost:3000/home/projects/show/",
      previous_current_project: undefined,
      think: this
    }
  }


  // when new project on side_col clicked
  $(".side-bar-listed-project-names").each(function(){
    $(this).click(function(){
       GLOBAL_VAR.PROJECTS.think = this;
      // return if they clicked the project they are currently viewing
      if($(this) == GLOBAL_VAR.PROJECTS.previous_current_project){ alert('same thing'); return;}

      // retrieve new project info
      $.ajax({
        type: "GET",
        url: GLOBAL_VAR.PROJECTS.projects_show_path + $(this).find('p').attr('data-id'),
        success: function(data, status, jqXHR){ updateProjectData(data, 800); updateSideColIcons(GLOBAL_VAR.PROJECTS.think, status);}, //success/error/complete
        error: function(jqXHR, status, errorThrown){ /*alert("Project Info Failed To Be Retrieved. Please, Try Again Later");*/ updateSideColIcons(GLOBAL_VAR.PROJECTS.think, status);},
        dataType: "json"
      });
    });
  });

  // After the ajax call for new content, fade old content to 0% opacity, replace it, then fade new content 100% opacity
  function updateProjectData(data, speed){

    $('.project-pictures').each(function(){
      $(this).fadeOut(speed, function(){ $(this).html(data.images) }).fadeIn(speed)
    })
    $('#project-name p:nth-child(2)').fadeOut(speed, function(){ $(this).html(data.name) }).fadeIn(speed)
    $('#project-objective p:nth-child(2)').fadeOut(speed, function(){ $(this).html(data.objective) }).fadeIn(speed)
    $('#project-description p:nth-child(2)').fadeOut(speed, function(){ $(this).html(data.description) }).fadeIn(speed)

    // $('#project-live_link').fadeOut(speed, function(){ $(this).html(data.live_link) }).fadeIn(speed)
    // $('#project-github_link').fadeOut(speed, function(){ $(this).html(data.github_link) }).fadeIn(speed)

  }
  function updateSideColIcons(project_clicked_element, status)
  {

    console.log(project_clicked_element)
    console.log(project_clicked_element == GLOBAL_VAR.PROJECTS.think)
    if(status == 'success')
    {
        // remove folder from old current project and place it onto the one just clicked
      if(GLOBAL_VAR.PROJECTS.previous_current_project != undefined)
      {
        GLOBAL_VAR.PROJECTS.previous_current_project.removeClass('current-project').removeClass('unavailable')
      }
      $(project_clicked_element).addClass('current-project');
      GLOBAL_VAR.PROJECTS.previous_current_project = $(project_clicked_element);
    }
    else //status == error
    {
      console.log(project_clicked_element)
      $(project_clicked_element).addClass('current-project').addClass('unavailable');
    }
  }
});
