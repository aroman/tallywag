_ = require 'underscore'

data_raw = '<JSON GOES HERE>'

data = JSON.parse(data_raw)

better_data = []

_.each(_.pairs(data), (e, i) ->
  better_data.push({
    name: e[0],
    likes: e[1]['likes'],
    comments: e[1]['comments'],
    lc_ratio: (likes/comments).toFixed(2) 
  })
)

by_likes = _.sortBy(better_data, "likes")
by_likes.reverse()

_.each by_likes, (e, i) ->
  console.log "##{i+1} #{e.name}: #{e.likes} likes, #{e.comments} comments, #{e.lc_ratio} likes per comment"

by_comments = _.sortBy(better_data, "comments")
by_comments.reverse()

_.each by_comments, (e, i) ->
  console.log "##{i+1} #{e.name}: #{e.comments} comments, #{e.likes} likes, #{e.lc_ratio} likes per comment"

by_lc = _.sortBy(better_data, "lc_ratio")
by_lc.reverse()

_.each by_lc, (e, i) ->
  console.log "##{i+1} #{e.name}: #{e.lc_ratio} likes per comment, #{e.likes} likes, #{e.comments} comments"
