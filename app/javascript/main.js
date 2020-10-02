window.addEventListener('load', function(){
  const show_calendar = document.getElementById("show-calendar");
  const pull_down_calendar = document.getElementById("pull-down-calendar");
  const show_top_calender = document.getElementById("show-top-calender");


  
  show_calendar.addEventListener('click', function() {
    // console.log("click OK")
    pull_down_calendar.setAttribute("style", "display:block;")
    show_top_calender.setAttribute("style", "display:block;")

  })
})
