# Robotframework Demo

## Setup

### Get the code
```sh
# Get the code
$ git clone https://github.com/skivis/robot_demo.git
$ cd robot_demo

# Create virtual env
$ python -m venv venv

# Activate env
$ source venv/(Scripts/bin)/activate # Depending on OS
```

### Install dependancies
```sh
(venv) $ pip install -r requirements.txt
```

### Run the tests

Before running the tests, set the correct --pythonpath in `args.txt` file,
pointing to the root directory of this project.

```sh
(venv) $ robot --argumentfile args.txt tests/search_flight.robot
```