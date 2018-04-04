let blacklists = ["https://mail.google.com/*", "*://mail.google.com/*", "@https://mail.google.com/mail/*"]
map ci :call getIP<CR>

map google :open "hptts://google.com"

site: '*.filmweb.pl'{
  google
}
