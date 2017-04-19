
<!--#echo json="package.json" key="name" underline="=" -->
identify-crawlers
=================
<!--/#echo -->

<!--#echo json="package.json" key="description" -->
My attempt at identifying web crawlers by User-Agent and/or IP. Generate
dynamic robots.txt reply with JS, or with PHP if you prefer.
<!--/#echo -->



Usage
-----

see [doc/demo/usage.js](doc/demo/usage.js)
from [test/usage.js](test/usage.js):
:TODO:

<!--!#include file="test/usage.js" start="  //#u" stop="  //#r"
  outdent="  " code="javascript" -->
```javascript
var identify-crawlers = require('identify-crawlers');
D.result  = identify-crawlers(null);
D.expect('===',           null);
```
<!--/include-->



<!--#toc stop="scan" -->



Known issues
------------

* needs more/better tests and docs



Sources for inspiration
-----------------------

* What crawlers are there?
  * Examples from [Search Engine Watch](http://web.archive.org/web/20170413234455/https://searchenginewatch.com/sew/news/2067357/bye-bye-crawler-blocking-parasites)
  * Examples from [hotpot](http://web.archive.org/web/20170413231533/http://hotpot.se/robots_txt_bots_bad.htm)
  * Check other people's `robots.txt`s: Ask search engines for
    `user-agent disallow` + some bot names.
  * Collect unidentified user-agent strings in a file.
    * Make cron script that monitors that file.




&nbsp;


License
-------
<!--#echo json="package.json" key=".license" -->
ISC
<!--/#echo -->
