rake cucumber:phantomjs OPTS="driver=selenium,sel_browser=phantomjs,txt_log=search_log.txt,html_log=search_log.html"
rake cucumber:poltergeist OPTS = "driver=poltergeist,txt_log=contact_us_form.txt,html_log=contact_us_log.html"