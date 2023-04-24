# 2023-04-26 Docker & Flask Crash Course

## Benötigt

* https://github.com Login

Optional

* https://code.visualstudio.com Visual Studio Code lokal installiert
* https://labs.play-with-docker.com Login

## Docker - Ziel

Erste Gehversuche mit fertigen Docker Images.

Links

* https://github.com/hmaerki/2024-04-26_Crash_Course Dieses Repo
* https://hub.docker.com Viele Docker Images
* https://labs.play-with-docker.com Docker Testumgebung
* https://dockerlabs.collabnix.com Sehr gute Tutorials
* https://code.visualstudio.com Visual Studio Code
* https://www.docker.com/products/docker-desktop/ Docker Desktop
* https://docs.docker.com/engine/reference/builder/ `Dockerfile` Referenz


**Homeassistant**

`docker run -p 8123:8123 --name homeassistant homeassistant/home-assistant`

Konto eröffnen und Applikation ausprobieren. 

**Grafana**

`docker run -p 3000:3000 --name=grafana grafana/grafana`

Login with `admin`/`admin`

**Nginx**

`docker run -p 8080:80 --name web nginx`

Jetzt die Welcome-Seite verändern:

`docker exec -it web /bin/bash`

Seite editieren
`/usr/share/nginx/html/index.html`

Editor installieren
`apt-get update && apt-get install nano -y`


## Flask - Ziel

Erste Gehversuche mit Codespaces, Visual Studio Code und Flask.

Links

* https://flask.palletsprojects.com/en/2.2.x Flask
* https://jinja.palletsprojects.com/en/3.1.x/templates Jinja Templates


## Arbeitschritte

Dieses Repo forken.

Diese Repo in Codespaces starten.

**Flask starten - command line**

`python -m flask run --debugger --reload`

**Flask starten - Debugger - Visual Studio Code**

Siehe [.vscode/launch.json](.vscode/launch.json)


**Flask internals - Routes**

https://flask.palletsprojects.com/en/2.2.x/quickstart/#variable-rules

**Flask internals - Rendering**

https://flask.palletsprojects.com/en/2.2.x/quickstart/#rendering-templates

Setze einen Breakpoint im Jinja Template: Debugger und Code completion!


# Dockerize Flask - Ziel

Docker image erstellen und starten.

```
docker build . -t demo && docker run -it --rm --network=host demo
```

Statt dem `python:3` image das `debian` image verwenden.
