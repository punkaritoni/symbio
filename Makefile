VENV := venv

$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	./$(VENV)/bin/pip install -r requirements.txt

venv: $(VENV)/bin/activate

test: venv
	./$(VENV)/bin/pytest --cache-clear

run: venv
	./$(VENV)/bin/python3 library/numberapp.py
	./$(VENV)/bin/robot robottests/login_test.robot

clean:
	rm -rf $(VENV)