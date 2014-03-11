# Copyright (C) 2014 Avi Romanoff <avi@romanoff.me>

loadAllPosts = (callback) ->
  operate = ->
    $('body').scrollTop $('body')[0].scrollHeight
    $(".fcg:nth-child(1)").each ->
      if /created the group/.test $(@).text()
        clearInterval timer
        callback()        
  timer = setInterval operate, 1000

loadAllComments = ->
  $(".UFIPagerLink > *").each ->
    el = $(@)
    setTimeout (-> el.click()), Math.random() * 1000

tallyLikes = (callback) ->
  window.stats = {}
  comments = $(".UFIComment")

  comments.each (index) ->
    name = $(".UFICommentActorName", @).text()
    likes = Number $(".UFICommentLikeButton > span", @).text()
    if stats[name]
      stats[name]['likes'] += likes
      stats[name]['comments'] += 1
    else
      stats[name] = {}
      stats[name]['likes'] = likes
      stats[name]['comments'] = 1
    if comments.length - 1 is index
      callback stats

loadAllPosts (-> loadAllComments())
window.FUCK_SHIT_UP = ->
  tallyLikes (stats) -> console.log(JSON.stringify(stats))