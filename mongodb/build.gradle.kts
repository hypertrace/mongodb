plugins {
  id("org.hypertrace.docker-plugin") version "0.6.1"
  id("org.hypertrace.docker-publish-plugin") version "0.6.1"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb")
  }
}
