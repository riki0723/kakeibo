window.addEventListener('load', function(){
  const show_calendar = document.getElementById("show-calendar");
  const pull_down_calendar = document.getElementById("pull-down-calendar");
  const show_top_calender = document.getElementById("show-top-calender");


  const show_rireki = document.getElementById("show-rireki");
  const pull_down_rireki = document.getElementById("pull-down-rireki");
  const show_top_list = document.getElementById("show-top-list");


  
  show_calendar.addEventListener('click', function() {
    // console.log("click OK")
    // 表示するもの
    pull_down_calendar.setAttribute("style", "display:block;")
    show_top_calender.setAttribute("style", "display:block;")
    // 表示しないもの
    pull_down_rireki.removeAttribute("style", "display:block;")
    show_top_list.removeAttribute("style", "display:block;")

  })


  show_rireki.addEventListener('click', function() {
    // 表示するもの
    pull_down_rireki.setAttribute("style", "display:block;")
    show_top_list.setAttribute("style", "display:block;")
    // 隠すもの
    pull_down_calendar.removeAttribute("style", "display:block;")
    show_top_calender.removeAttribute("style", "display:block;")
  })
})
