sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart hello
#sudo /etc/init.d/gunicorn restart /home/box/web/etc/gunicorn.conf
#sudo /etc/init.d/gunicorn -c /etc/gunicorn.d/test hello
# sudo /etc/init.d/mysql start
gunicorn --bind="0.0.0.0:8080" hello:wsgi_application