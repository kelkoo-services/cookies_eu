#= require jquery
#= require jquery.cookie

$ ->
  $(".cookies-eu-ok").click (e) ->
    e.preventDefault()
    $.cookie "cookie_eu_consented", "true",
      path: "/"
      domain: document.domain.split(".").slice(-2).join(".")
      expires: 365

    $(".cookies-eu").slideUp "slow"
    return

  $(".cookies-eu").slideDown "slow" unless $.cookie("cookie_eu_consented")?
