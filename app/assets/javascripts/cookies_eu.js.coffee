#= require jquery
#= require jquery.cookie

$ ->
  $(".cookies-eu-ok").click (e) ->
    e.preventDefault()
    $.cookie "cookie_eu_consented", "true",
      path: "/"
      domain: document.domain.split(".").slice(-2).join(".")

    $(".cookies-eu").fadeOut "slow"
    return

  $(".cookies-eu").fadeIn "slow" unless $.cookie("cookie_eu_consented")?
