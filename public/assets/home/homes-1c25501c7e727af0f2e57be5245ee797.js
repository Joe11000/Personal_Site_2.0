$(function(){

  GLOBAL_VAR = {
    PROJECTS: {
      projects_show_path: "http://localhost:3000/home/projects/show/",
      previous_current_project: undefined
    }
  }

  // when new project on side_col clicked
  $(".side-bar-listed-project-names").each(function(){
    $(this).click(function(){
       project_clicked_element = this;
      // return if they clicked the project they are currently viewing
      if($(this) == GLOBAL_VAR.PROJECTS.previous_current_project)
      {
        alert('same thing');
        return;
      }

      // retrieve new project info
      $.ajax({
        type: "GET",
        url: GLOBAL_VAR.PROJECTS.projects_show_path + $(this).find('p').attr('data-id'),
        success: function(data, status, jqXHR){ updateProjectData(data, 800); updateSideColIcons(project_clicked_element, status);}, //success/error/complete
        error: function(jqXHR, status, errorThrown){ /*alert("Project Info Failed To Be Retrieved. Please, Try Again Later");*/ updateSideColIcons(project_clicked_element, status);},
        dataType: "json"
      });
    });
  });

  // After the ajax call for new content, fade old content to 0% opacity, replace it, then fade new content 100% opacity
  function updateProjectData(data, speed){

    el1 = undefined
    // console.log("pictures html = " + data.pictures)
    // console.log(speed, data.pictures)
    el1 = $('#project-pictures-row')
    el1.fadeOut(speed, function(){ el1.replaceWith(data.pictures); el1.fadeIn(speed)});

    el2 = $('#project-name p:nth-child(2)')
    console.log("project-name from ->" + el2.text() + ", to -> " + data.name)
    el2.fadeOut(speed, function(){ el2.text(data.name); el2.fadeIn(speed); })

    el3 = $('#project-objective p:nth-child(2)')
    console.log("project-objective from ->" + el3.text() + ", to -> " + data.objective)
    el3.fadeOut(speed, function(){ el3.text(data.objective); el3.fadeIn(speed); });

    el4 = $('#project-description p:nth-child(2)');
    console.log("project-description from ->" + el4.text() + ", to -> " + data.description)
    el4.fadeOut(speed, function(){ el4.text(data.description); el4.fadeIn(speed); });

    // $('#project-live_link').fadeOut(speed, function(){ $(this).html(data.live_link) }).fadeIn(speed)
    // $('#project-github_link').fadeOut(speed, function(){ $(this).html(data.github_link) }).fadeIn(speed)

  }
  function updateSideColIcons(project_clicked_element, status)
  {

    if(status == 'success')
    {
        // remove folder from old current project and place it onto the one just clicked
      if(GLOBAL_VAR.PROJECTS.previous_current_project != undefined)
      {
        GLOBAL_VAR.PROJECTS.previous_current_project.removeClass('current-project').removeClass('unavailable')
      }
      $(project_clicked_element).addClass('current-project').removeClass('unavailable');
      GLOBAL_VAR.PROJECTS.previous_current_project = $(project_clicked_element);
    }
    else //status == error
    {
      console.log(project_clicked_element)
      $(project_clicked_element).addClass('current-project').addClass('unavailable');
    }
  }
});
