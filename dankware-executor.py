import sys
from dankware import *

while True:
    # this variable is long to prevent it from being changed!
    cmd_to_be_executed = input(clr("\n  > ") + white_bright)
    match cmd_to_be_executed:
        case 'exit' | 'EXIT' | 'stop' | 'STOP': break
        case 'env' | 'globals':
            print()
            if cmd_to_be_executed == 'env':
                for key, val in os.environ.items():
                    print(f"{green_bright}{key}{white}: {green}{val}")
            elif cmd_to_be_executed == 'globals':
                for key, val in globals().items():
                    if key == "code": val = "<code is too long to display>"
                    print(f"{green_bright}{key}{white}: {green}{val}\n")
            continue
    try: exec(cmd_to_be_executed)
    except: print(clr("\n" + err(sys.exc_info()), 2))
