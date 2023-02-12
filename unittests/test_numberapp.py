import sys
from numberapp import *

test_content = [1,2,3,4,5,6]

def test_generate_content():
    assert generate_content(1,6) == test_content

def test_write_and_read():
    write_to_file(test_content, "test.txt")
    assert read_from_file("test.txt") == test_content
    
def test_log_content(capfd):
    log_content(test_content)
    out, err = capfd.readouterr()
    assert out == "Value 1 = 1\nValue 2 = 2\nValue 3 = 3\n"