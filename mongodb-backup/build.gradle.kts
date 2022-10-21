plugins {
  id("org.hypertrace.docker-plugin") version "0.9.9"
  id("org.hypertrace.docker-publish-plugin") version "0.9.9"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb-backup")
  }
}
