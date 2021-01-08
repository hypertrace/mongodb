plugins {
  id("org.hypertrace.docker-plugin") version "0.8.1"
  id("org.hypertrace.docker-publish-plugin") version "0.8.1"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb-backup")
  }
}
