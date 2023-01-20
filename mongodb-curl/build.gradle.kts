plugins {
  id("org.hypertrace.docker-plugin") version "0.9.9"
  id("org.hypertrace.docker-publish-plugin") version "0.9.9"
}

var mongoVersion = "4.4.18"

hypertraceDocker {
  defaultImage {
    imageName.set("mongo-curl")
    buildArgs.put("MONGO_VERSION", mongoVersion)
  }
}
