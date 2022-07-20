plugins {
  id("org.hypertrace.docker-plugin") version "0.9.4"
  id("org.hypertrace.docker-publish-plugin") version "0.9.4"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb-backup")
  }
}
