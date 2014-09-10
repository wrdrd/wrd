
default: serve

test-appengine:
	/usr/local/google_appengine/run_tests.py

serve:
	/usr/local/google_appengine/dev_appserver.py ./app.yaml

open:
	open http://localhost:8000/ & \
		open http://localhost:8080/

APPENGINE_EMAIL=''

update:
	/usr/local/google_appengine/appcfg.py update -e $(APPENGINE_EMAIL) .
