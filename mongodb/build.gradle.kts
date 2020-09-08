plugins {
  id("org.hypertrace.docker-plugin") version "0.7.0"
  id("org.hypertrace.docker-publish-plugin") version "0.7.0"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb")
  }
}
