plugins {
  id("org.hypertrace.docker-plugin") version "0.9.0"
  id("org.hypertrace.docker-publish-plugin") version "0.9.4"
}

hypertraceDocker {
  defaultImage {
    imageName.set("mongodb")
  }
}
