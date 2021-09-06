
cat:
	cat Makefile
jup-run:
	docker run -it -p 8080:8888 -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/home tbutzer/local-jup jupyter notebook --allow-root --ip="0.0.0.0" --NotebookApp.token='yaml'

publish:
	./gitpush.sh
