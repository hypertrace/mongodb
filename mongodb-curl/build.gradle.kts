plugins {
  id("org.hypertrace.docker-plugin") version "0.9.0"
  id("org.hypertrace.docker-publish-plugin") version "0.9.4"
}

var mongoVersion = "4.4.0"

hypertraceDocker {
  defaultImage {
    imageName.set("mongo-curl")
    buildArgs.put("MONGO_VERSION", mongoVersion)
  }
}
