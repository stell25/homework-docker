# Mini-Instagram Tech Stack

**Overview**

This repo contains a project based on a tutorial on how to containerize a Flask application with Postgres for development. It primarily uses Docker, and also includes Gunicorn and Nginx to handle static and media files. The resulting application is a modified instagram tech stack, where users can upload pictures and view photos they have uploaded.

**Build Instructions**
Here is a list of steps to bring up the server and run the application:

1. Ensure that docker is installed on your machine.
2. Clone this repository and cd into it.
3. Create a file `.env.prod.db` in the project root directory that contains:
```
POSTGRES_USER=hello_flask
POSTGRES_PASSWORD=hello_flask
POSTGRES_DB=hello_flask_prod
```
5. Run the following commands to build and start the Docker containers (Note that the first command brings down development containers):
```
docker compose -f docker-compose.prod.yml down -v
docker compose -f docker-compose.prod.yml up -d --build
docker compose -f docker-compose.prod.yml exec web python manage.py create_db
```
6. Enable Port Forwarding from docker to your local port.
7. Upload an image at http://localhost:8080/upload. Then, view the image at http://localhost:8080/media/IMAGE_FILE_NAME.
