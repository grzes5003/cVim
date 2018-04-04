let blacklists = ["https://mail.google.com/*", "*://mail.google.com/*", "@https://mail.google.com/mail/*"]
map ci :call getIP<CR>

getIP() -> {{
httpRequest({url: 'http://api.ipify.org/?format=json', json: true},
            function(res) { Status.setMessage('IP: ' + res.ip); });
}}

map ci :call getIP<CR>

site '*://*.filmweb.pl/*' {
   call ci
}
