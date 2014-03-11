_ = require 'underscore'

data_raw = '{"Jesse Bernstein":{"likes":452,"comments":100},"Lev Ziskind":{"likes":106,"comments":90},"Avi Romanoff":{"likes":685,"comments":198},"Sophia Elizabeth Shoulson":{"likes":465,"comments":259},"Gavi Stein":{"likes":541,"comments":160},"Hannah Wischnia":{"likes":594,"comments":171},"Miranda Davis":{"likes":819,"comments":183},"Dara Engel":{"likes":208,"comments":59},"Jack Kolansky":{"likes":362,"comments":83},"Ben Jaron":{"likes":317,"comments":83},"NotJacob Reich":{"likes":802,"comments":251},"Hannah Cooper":{"likes":228,"comments":140},"Gracie Gottlieb":{"likes":276,"comments":67},"Anne Prusky":{"likes":305,"comments":154},"Maya Kassutto":{"likes":190,"comments":51},"Avi Gordon":{"likes":375,"comments":123},"David Zuckerman":{"likes":29,"comments":20},"Effi Feldblum":{"likes":27,"comments":57},"Rebecca Lipstein":{"likes":64,"comments":65},"Avigail Schneiman":{"likes":141,"comments":65},"Jonathan Neff":{"likes":247,"comments":78},"Ben Bernstein":{"likes":123,"comments":28},"Sarah Wolfson":{"likes":208,"comments":88},"Jonathan Feld":{"likes":105,"comments":45},"Shawn Martin":{"likes":105,"comments":20},"David Brem":{"likes":32,"comments":12},"Elijah Ackerman":{"likes":7,"comments":15},"David Feinberg":{"likes":169,"comments":62},"Jared Raikin":{"likes":44,"comments":21},"Emily Krulik":{"likes":2,"comments":2},"אבי לורי":{"likes":35,"comments":74},"Ashira Naftali Greer":{"likes":102,"comments":54},"Haley Newman":{"likes":77,"comments":58},"Jade Nadav":{"likes":212,"comments":99},"Klielle Glanzberg-Krainin":{"likes":199,"comments":50},"Jon Kolman":{"likes":23,"comments":25},"Marnie Landau":{"likes":59,"comments":30},"Josh Perloff":{"likes":48,"comments":81},"Naama Malomet":{"likes":178,"comments":65},"Nora Abel":{"likes":40,"comments":22},"Aaron Schapira":{"likes":121,"comments":25},"Alex Bierig":{"likes":164,"comments":115},"Aden Ohayon":{"likes":75,"comments":69},"Shai Naftali Greer":{"likes":3,"comments":8},"Robbie Rosen":{"likes":156,"comments":33},"Bigg Mac":{"likes":56,"comments":24},"Lili Naim":{"likes":167,"comments":54},"Dede Marx":{"likes":27,"comments":72},"Wendy Woods":{"likes":49,"comments":21},"Michala Collis":{"likes":293,"comments":131},"Jessica Berson":{"likes":40,"comments":19},"Awi Yo":{"likes":49,"comments":34},"Rachel Lipton":{"likes":13,"comments":16},"Michael Cahana":{"likes":95,"comments":20},"Adam Black":{"likes":115,"comments":51},"Michael Foster":{"likes":27,"comments":12},"Dan Fradkin":{"likes":89,"comments":22}}'

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
