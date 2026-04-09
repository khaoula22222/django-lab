 Django Poll App with Docker

Overview

This project is a simple **Poll Application** built with **Django**, containerized using **Docker**, and served via **Gunicorn** behind an **Nginx reverse proxy**.

It demonstrates how to structure, containerize, and run a web application using modern tools.

---

Tech Stack

* **Django 6**
* **Gunicorn**
* **Nginx**
* **Docker & Docker Compose**
* **SQLite**

---

Project Structure

```
├── docs/
├── nginx/
│   └── nginx.conf
├── src/
│   └── helloworld/
│       ├── helloworld/
│       ├── polls/
│       └── manage.py
├── tests/
├── .gitignore
├── docker-compose.yml
├── Dockerfile
├── requirements.txt
├── start.sh
└── README.md
```

---

How It Works

* Django handles the application logic
* Gunicorn runs the Django app inside the container
* Nginx acts as a reverse proxy
* Docker Compose manages the services

Clone the repository

```bash
git clone <your-repo-url>
cd django-lab
```

---

Build and run

```bash
sudo docker-compose up --build
```

---

Open the app

```
http://localhost:8000/polls/
```

---

Features

* View poll questions
* Vote on choices
* View results
* Admin interface for managing polls

---

Configuration

If running behind a reverse proxy, ensure:

```python
CSRF_TRUSTED_ORIGINS = ["http://localhost:8000"]
```

Services

Web

* Django + Gunicorn
* Runs migrations automatically

Nginx

* Exposes port **8000**
* Proxies requests to the Django app

---

Useful Commands

Stop containers

```bash
sudo docker-compose down
```

View logs

```bash
sudo docker-compose logs
```

Check status

```bash
sudo docker-compose ps
```

Status

* Fully functional Django application
* Dockerized environment
* Reverse proxy configured
* Voting system implemented

Notes

* SQLite is used for simplicity
* Gunicorn runs with a single worker for low resource usage

