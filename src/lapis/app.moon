lapis = require "lapis"

docker_apps = {
  "postgres": "src/db"
  "django": "src/django"
  "lapis": "src/lapis"
  "mqtt": "src/mqtt"
  "prometheus": "src/prometheus"
  "nginx": "src/nginx"
}

class extends lapis.Application
  [index: "/"]: =>
    @html ->
      h1 "Lapis Server"
      a href: @url_for("list_apps"), "A list of Apps"

  [list_apps: "/apps"]: =>
    @html ->
      ul ->
        for app in pairs docker_apps
          li ->
            a href: @url_for("app", name: app), app

  [app: "/apps/:name"]: =>
    app_description = docker_apps[@params.name]
    unless app_description
      return "Not Found", status: 404
    @html ->
      h1 @params.name
      h2 "App Description"
      p app_description

