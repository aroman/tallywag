# TallyWag: The Facebook Like Tally-er

### NOTE: THIS IS VERY VERY VERY VERY VERY HACKY. 

### Instructions
1. Install node and coffee-script
2. Compile `likewhore.coffee`
3. Open Facebook and browse to the group you wish to target
4. [jQueryify the page](http://www.learningjquery.com/2006/12/jquerify-bookmarklet/) (click the bookmarklet on the Facebook page)
5. Copy and paste the compiled JS from `likewhore.coffee` into the Facebook page's JavaScript console. **NOTE:** If this doesn't work, you may need to turn on [self-xss](https://www.facebook.com/selfxss)
6. Wait. Your browser is now loading every single thread and then comment on the page. You'll know it's done when your page stops lagging like crazy.
7. In the JavaScript console, type `FUCK_SHIT_UP()` and hit return. This will take a bit to run, but when it's done, `window.stats` will contain the tally goodness. Also it should print a JSON-encoded version of that to the console when it's done.
8. Copy and paste the contents of `window.stats` out of the browser and hard code it into line 3 of `ratios.coffee`. Then compile & run `ratios.coffee`.
9. DONE!
