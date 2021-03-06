$(function(){

  GLOBAL_VAR = {
    PROJECTS: {
      previous_current_project: $('div.side-bar-listed-project-names.current-project'),
      host: ""
    }
  }

  // when new project on side_col clicked
  $(".side-bar-listed-project-names").each(function(){
    $(this).click(function(){
       project_clicked_element = this;

      // return if they clicked the project they are currently viewing
      if($(this) == GLOBAL_VAR.PROJECTS.previous_current_project)
        return;

      // retrieve new project info
      $.ajax({
        type: "GET",
        url: GLOBAL_VAR.PROJECTS.host + "home/projects/show/" + $(this).find('p').attr('data-id'),
        success: function(data, status, jqXHR){ updateProjectData(data, 800); updateSideColIcons(project_clicked_element, status); }, //success/error/complete
        error: function(jqXHR, status, errorThrown){ updateSideColIcons(project_clicked_element, status); },
        dataType: "json"
      });
    });
  });

  // After the ajax call for new content, fade old content to 0% opacity, replace it, then fade new content 100% opacity
  function updateProjectData(data, speed){

    el1 = $('#project-pictures-row')
    el1.fadeOut(speed, function(){ el1.replaceWith(data.pictures); el1.fadeIn(speed)});

    el2 = $("#project-name-container [data-id='project-name']")
    el2.fadeOut(speed, function(){ el2.text(data.name); el2.fadeIn(speed); })

    el3 = $("#project-objective-container [data-id='project-objective']")
    el3.fadeOut(speed, function(){ el3.text(data.objective); el3.fadeIn(speed); });

    el4 = $("#project-description-container [data-id='project-description']");
    el4.fadeOut(speed, function(){ el4.text(data.description); el4.fadeIn(speed); });

    el5 = $('#project-live-link')
    el5.fadeOut(speed, function(){
      if(data.live_link != "") // only show live link if there is one
      {
        el5.attr('href', data.live_link);
        el5.fadeIn(speed);
      }
    });

    el6 = $('#project-github-link');
    el6.fadeOut(speed, function(){
      if(data.github_link != "") // only show github link if there is one
      {
        el6.attr('href', data.github_link);
        el6.fadeIn(speed);
      }
    });
  }

  function updateSideColIcons(project_clicked_element, status)
  {
    if(status == 'success')
    {
      // remove folder from old current project and place it onto the one just clicked
      GLOBAL_VAR.PROJECTS.previous_current_project.removeClass('current-project').removeClass('unavailable')
      $(project_clicked_element).addClass('current-project').removeClass('unavailable');
      GLOBAL_VAR.PROJECTS.previous_current_project = $(project_clicked_element);
    }
    else //status == error
    {
      console.log(project_clicked_element)
      $(project_clicked_element).addClass('current-project').addClass('unavailable');
    }
  }

  // make each of the tool tips on the screen work
  $('#social-media-row > div > a > img').each(function(index, element){$(element).tooltip()});
  $('#project-live-link img').tooltip();
  $('#project-github-link img').tooltip();
});
