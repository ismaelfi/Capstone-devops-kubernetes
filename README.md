# Using a CI/CD approach, we build a Docker image and  run it in a Kubernetes cluster.

## The project includes the following main tasks:

* Initialize the Python virtual environment: make setup
* Install all necessary dependencies: make install
* Test the project's code using linting: make lint
* Lints shell scripts, Dockerfile and python code
* Create a Dockerfile to "containerize" the hello application: Dockerfile
* Deploy to a public Docker Registry: Docker Hub the containerized application
* Deploy a Kubernetes cluster: make eks-create-cluster
* Deploy the application: make k8s-deployment
* Update the app in the cluster, using a rolling-update strategy: make rolling-update
* Delete the cluster: make eks-delete-cluster
