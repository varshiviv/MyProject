package 'apache2'

service 'apache2' do
   supports :status => true
   action [:enable, :start]
end

file '/var/www/html/index.html' do
   content '<html>
   <body>
      <h1>Hello Chef!</h1>
      <a href="/home.html">Go to Home Chef!</a>
   </body>
  </html>'
end

file '/var/www/html/home.html' do
   content '<html>
   <body>
      <h1>Home Chef!</h1>
      <a href="/index.html">Go to Hello Chef!</a>
   </body>
  </html>'
end
