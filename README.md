
# crashContainer

crashContainer is a Docker container that can exit (crash) with a specific exit code at the user's request.
Useful for testing monitoring systems.

# How it works

crashContainer is nothing but a simple Python script running a Flask web server. When it recieves a request on a /path
it will attempt to call `os._exit()` with the path name as an argument. The path name in the request should be an integer (e.g 127).


# Usage

Build the Docker image and start the container using the provided `rerun.sh` script (or do it yourself manually).
Then, make a HTTP request to the container on the exposed port (5000 by default), specifying the required exit code in the path:

`curl http://localhost:5000/127 # crashes the container with exit code 127` 

Multiple containers can be started using this image, just forward port 5000 to a different port on the host for each one. 
E.g `5001:5000`, `5002:5000`, etc...




