# LnTMiniProd - DevOps Mini Project

DevOps mini project showcasing Kubernetes, Docker, autoscaling, health monitoring, and CI/CD.

## Prerequisites

- Python 3.8+
- Docker
- Kubernetes (Minikube)
- kubectl
- pytest (for testing)

---
CLPIPPy - MINI PROJECT #04 CI Pipeline for a Python App 
Autoscaler - MINI PROJECT #08: Kubernetes Horizontal Pod Autoscaler
To-Do API - MINI PROJECT #03: Dockerized To-Do API
Health Monitor - MINI PROJECT #01 Sysadmin Automation Kit
K8sheal - MINI PROJECT #07: Kubernetes Self-Healing App Demo
LintGate - MINI PROJECT #05: Infrastructure-as-Code CI/CD Lab

## Project To-Do Guide

### 1. CLPIPPy - Python Calculator

**Description:** Unit-tested Python calculator application with CI/CD pipeline integration.

**Major Steps:**

- ▶ **Setup & Dependencies**
  - ☐ Navigate to `CLPIPPy/` directory
  - ☐ Review `requirements.txt` for dependencies
  - ☐ Create virtual environment: `python -m venv venv`
  - ☐ Activate environment: `source venv/bin/activate` (Linux/Mac) or `venv\Scripts\activate` (Windows)
  - ☐ Install dependencies: `pip install -r requirements.txt`

- ▶ **Development & Testing**
  - ☐ Review calculator functions in `calculator.py` (add, subtract, multiply, divide)
  - ☐ Run unit tests: `pytest test_calculator.py -v`
  - ☐ Verify all tests pass (100% success rate)
  - ☐ Add additional edge case tests if needed

- ▶ **Code Quality**
  - ☐ Review code for PEP 8 compliance
  - ☐ Add type hints to function signatures
  - ☐ Add docstrings to all functions
  - ☐ Run linter: `pylint calculator.py` (optional)

- ▶ **CI/CD Integration**
  - ☐ Create `.github/workflows/` directory (if using GitHub)
  - ☐ Setup automated test pipeline
  - ☐ Configure deployment steps
  - ☐ Test pipeline execution

- ▶ **Documentation**
  - ☐ Update sub-project README with usage examples
  - ☐ Document test execution steps
  - ☐ Add any additional features planned

---

### 2. Autoscaler - Flask CPU Load Simulator

**Description:** Flask application that simulates CPU load for testing Kubernetes horizontal pod autoscaling.

**Major Steps:**

- ▶ **Setup & Configuration**
  - ☐ Navigate to `autoscaler/` directory
  - ☐ Review `requirements.txt` dependencies
  - ☐ Install dependencies: `pip install -r requirements.txt`
  - ☐ Review current `app.py` implementation

- ▶ **Local Testing**
  - ☐ Start Flask app: `python app.py`
  - ☐ Test endpoint: `curl http://localhost:5000/`
  - ☐ Verify CPU load simulation is working
  - ☐ Monitor system resource usage during load

- ▶ **Docker Containerization**
  - ☐ Review `Dockerfile` configuration
  - ☐ Build Docker image: `docker build -t autoscaler:latest .`
  - ☐ Test container locally: `docker run -p 5000:5000 autoscaler:latest`
  - ☐ Verify container works as expected
  - ☐ Push image to registry (if needed)

- ▶ **Kubernetes Deployment**
  - ☐ Create Kubernetes deployment manifest (if not exists)
  - ☐ Configure resource requests/limits for autoscaling
  - ☐ Deploy to cluster: `kubectl apply -f deployment.yaml`
  - ☐ Verify deployment status: `kubectl get pods`
  - ☐ Monitor logs: `kubectl logs -f deployment/autoscaler`

- ▶ **Autoscaling Configuration**
  - ☐ Create Horizontal Pod Autoscaler (HPA) manifest
  - ☐ Configure CPU threshold targets (e.g., 70%)
  - ☐ Set min/max replica counts
  - ☐ Apply HPA: `kubectl apply -f hpa.yaml`
  - ☐ Monitor scaling behavior during load testing

- ▶ **Testing & Validation**
  - ☐ Generate load to trigger autoscaling
  - ☐ Verify pods scale up when threshold exceeded
  - ☐ Verify pods scale down when load decreases
  - ☐ Review metrics: `kubectl top pods`

---

### 3. To-Do API - Dockerized REST API

**Description:** Flask-based RESTful To-Do API with CRUD operations, packaged in Docker using multi-stage builds and published to Docker Hub.

**Major Steps:**

- ▶ **Setup & Dependencies**
  - ☐ Navigate to `todo-api/` directory
  - ☐ Review `requirements.txt` (Flask and dependencies)
  - ☐ Create virtual environment: `python -m venv venv`
  - ☐ Activate environment and install: `pip install -r requirements.txt`
  - ☐ Review `app.py` Flask API implementation

- ▶ **Local Testing**
  - ☐ Start Flask app: `python app.py`
  - ☐ Test endpoints locally: `curl http://localhost:5000`
  - ☐ Create task: `curl -X POST http://localhost:5000/todos -d '{"task":"Learn Docker"}'`
  - ☐ Get all tasks: `curl http://localhost:5000/todos`
  - ☐ Test UPDATE and DELETE endpoints

- ▶ **Docker Build & Test**
  - ☐ Review multi-stage `Dockerfile` configuration
  - ☐ Review `.dockerignore` file
  - ☐ Build image: `docker build -t todo-api:v1.0.0 .`
  - ☐ Run container: `docker run -p 5000:5000 todo-api:v1.0.0`
  - ☐ Verify API works in container (test all endpoints)

- ▶ **Docker Hub Publishing**
  - ☐ Create Docker Hub account (if needed)
  - ☐ Tag image: `docker tag todo-api:v1.0.0 <username>/todo-api:v1.0.0`
  - ☐ Login to Docker Hub: `docker login`
  - ☐ Push image: `docker push <username>/todo-api:v1.0.0`
  - ☐ Verify image on Docker Hub

- ▶ **Semantic Versioning**
  - ☐ Follow versioning format: `MAJOR.MINOR.PATCH` (e.g., v1.0.0)
  - ☐ Tag new versions appropriately
  - ☐ Document version changes in README

---

### 4. Health Monitor - System Health Monitoring

**Description:** Bash script that collects and logs system health metrics (uptime, disk usage, memory).

**Major Steps:**

- ▶ **Script Review & Enhancement**
  - ☐ Review `health_check.sh` script contents
  - ☐ Verify all monitoring sections (hostname, uptime, disk, memory, CPU)
  - ☐ Check log file output format and clarity

- ▶ **Local Testing**
  - ☐ Execute script: `bash health_check.sh`
  - ☐ Review generated `server_health.log`
  - ☐ Verify all metrics are captured correctly
  - ☐ Check timestamp accuracy

- ▶ **Scheduling & Automation**
  - ☐ Setup cron job for periodic execution (e.g., every 5 minutes)
  - ☐ Add crontab entry: `crontab -e`
  - ☐ Test cron execution and log generation
  - ☐ Verify logs are accumulating properly

- ▶ **Log Management**
  - ☐ Implement log rotation to prevent disk bloat
  - ☐ Configure retention policy (e.g., keep 30 days)
  - ☐ Setup log archival (optional)
  - ☐ Monitor log file size growth

- ▶ **Integration with Kubernetes (Optional)**
  - ☐ Create DaemonSet for cluster-wide monitoring
  - ☐ Mount shared volume for log collection
  - ☐ Configure pod-specific health checks
  - ☐ Setup log aggregation with centralized monitoring

- ▶ **Alerting (Optional)**
  - ☐ Define alert thresholds (disk %, memory %, CPU %)
  - ☐ Implement alert notifications
  - ☐ Setup email/Slack alerts for critical conditions
  - ☐ Document alert handling procedures

---

### 5. K8sheal - Kubernetes Auto-Healing Deployment

**Description:** Kubernetes deployment with 3 replicas featuring auto-healing, health checks, and service discovery.

**Major Steps:**

- ▶ **Docker Image Preparation**
  - ☐ Review `Dockerfile` configuration
  - ☐ Review `index.html` static content
  - ☐ Build Docker image: `docker build -t k8sheal:latest .`
  - ☐ Test image locally: `docker run -p 8080:80 k8sheal:latest`
  - ☐ Verify web server responds correctly

- ▶ **Kubernetes Deployment**
  - ☐ Review `deployment.yaml` structure and configuration
  - ☐ Verify replica count is set to 3
  - ☐ Check container port and image settings
  - ☐ Apply deployment: `kubectl apply -f deployment.yaml`
  - ☐ Verify deployment: `kubectl get deployments`
  - ☐ Verify pods running: `kubectl get pods`

- ▶ **Health Checks Configuration**
  - ☐ Add liveness probe to detect failed containers
  - ☐ Add readiness probe to detect ready pods
  - ☐ Configure probe intervals and thresholds
  - ☐ Test health check behavior

- ▶ **Service Setup**
  - ☐ Verify ClusterIP service is configured
  - ☐ Test internal service discovery: `kubectl get svc`
  - ☐ Create NodePort service for external access (optional)
  - ☐ Test external connectivity if NodePort used

- ▶ **Auto-Healing Testing**
  - ☐ Manually kill a pod: `kubectl delete pod <pod-name>`
  - ☐ Verify replacement pod is created automatically
  - ☐ Verify replica count returns to 3
  - ☐ Check pod logs for restart events

- ▶ **Monitoring & Verification**
  - ☐ View deployment status: `kubectl describe deployment k8sheal`
  - ☐ Monitor pod logs: `kubectl logs -f <pod-name>`
  - ☐ Check resource usage: `kubectl top pods`
  - ☐ Setup persistent monitoring (optional)

- ▶ **Rolling Updates (Optional)**
  - ☐ Update image or configuration
  - ☐ Verify rolling update strategy
  - ☐ Monitor update progress: `kubectl rollout status deployment/k8sheal`
  - ☐ Verify all pods updated successfully

---

### 6. LintGate - IAC CICD Lab

**Description:** Terraform infrastructure-as-code project with automated linting and validation via GitHub Actions CI/CD pipeline.

**Major Steps:**

- ▶ **Prerequisites & Setup**
  - ☐ Install Terraform >= 1.0
  - ☐ Install Git
  - ☐ Create/verify GitHub account
  - ☐ Clone repository: `git clone <repo-url>`
  - ☐ Navigate to project: `cd iac-cicd-lab`

- ▶ **Local Development Environment**
  - ☐ Initialize Terraform: `terraform init -backend=false`
  - ☐ Review `main.tf` configuration and resources
  - ☐ Check provider configuration (`hashicorp/local` ~>2.5)
  - ☐ Verify all required dependencies are present

- ▶ **Code Quality & Validation**
  - ☐ Run format check: `terraform fmt -check -recursive`
  - ☐ Auto-format code if needed: `terraform fmt -recursive`
  - ☐ Validate configuration: `terraform validate`
  - ☐ Review validation output for errors
  - ☐ Verify all resources syntax is correct

- ▶ **Planning & Testing**
  - ☐ Generate infrastructure plan: `terraform plan`
  - ☐ Review planned changes in detail
  - ☐ Verify no unintended resource modifications
  - ☐ Check resource dependencies
  - ☐ Validate output values (should return "hello")

- ▶ **Apply Configuration (Local)**
  - ☐ Review plan one final time
  - ☐ Apply infrastructure: `terraform apply`
  - ☐ Confirm and approve changes
  - ☐ Verify `local_file.student_doc` created
  - ☐ Verify test output displays correctly

- ▶ **GitHub Actions CI/CD Setup**
  - ☐ Review `.github/workflows/lint.yaml` workflow file
  - ☐ Verify workflow trigger on PR to `main` branch
  - ☐ Confirm workflow includes: format validation, syntax check, validation
  - ☐ Commit workflow file to repository
  - ☐ Push changes to GitHub

- ▶ **CI/CD Testing & Validation**
  - ☐ Create feature branch: `git checkout -b feature/test`
  - ☐ Make a test change to `main.tf`
  - ☐ Commit and push to GitHub
  - ☐ Create Pull Request against `main` branch
  - ☐ Monitor GitHub Actions workflow execution
  - ☐ Verify CI/CD pipeline runs automatically
  - ☐ Check workflow results (pass/fail)
  - ☐ Review detailed workflow logs in Actions tab

- ▶ **Advanced Configuration (Optional)**
  - ☐ Create `variables.tf` for input variables
  - ☐ Create `outputs.tf` for resource outputs
  - ☐ Implement remote state backend (AWS S3 + DynamoDB)
  - ☐ Add tfsec security scanning to CI/CD
  - ☐ Setup separate environments (dev/prod)
  - ☐ Configure Terraform Cloud/Enterprise integration
  - ☐ Add cost estimation to pipeline
  - ☐ Create module structure for reusability

- ▶ **Pre-commit Hooks (Optional)**
  - ☐ Install pre-commit framework
  - ☐ Configure `.pre-commit-config.yaml`
  - ☐ Setup terraform format check
  - ☐ Setup terraform validation
  - ☐ Setup tflint integration
  - ☐ Test pre-commit hooks locally

- ▶ **Documentation & Troubleshooting**
  - ☐ Document all resource configurations
  - ☐ Test troubleshooting procedures
  - ☐ Verify backend reset works: `rm -rf .terraform .terraform.lock.hcl`
  - ☐ Document any custom configurations
  - ☐ Update README with project-specific notes

**Project Structure:**
```
iac-cicd-lab/
├── main.tf              # Core Terraform configuration
├── variables.tf         # Input variables (optional)
├── outputs.tf           # Output values (optional)
├── .github/workflows/
│   └── lint.yaml       # Automated CI/CD pipeline
├── .gitignore          # Git exclusions
└── .terraform/         # Terraform working directory
```

**How It Works (Workflow):**
1. **Format Check** → `terraform fmt -recursive`
2. **Initialize** → `terraform init -backend=false`
3. **Validate** → `terraform validate`
4. **Plan** → `terraform plan`
5. **Apply** → `terraform apply`

**CI/CD Pipeline Steps:**
- ✅ Terraform format validation on PR
- ✅ Configuration syntax validation
- ✅ Terraform validation check

**Common Issues & Solutions:**

| Issue | Solution |
|-------|----------|
| Format errors | Run `terraform fmt -recursive` before commit |
| Validation fails | Check required providers and resource syntax in `main.tf` |
| State conflicts | Use `-backend=false` for local development |
| Provider mismatch | Verify `hashicorp/local` provider version ~>2.5 |
| Path issues | Use `${path.module}` for relative file paths |

**Troubleshooting Commands:**
```bash
# Clear Terraform state
rm -rf .terraform .terraform.lock.hcl

# Reinitialize
terraform init -backend=false

# Reinstall providers
rm -rf .terraform && terraform init -backend=false
```

**Resources:**
- [Terraform Documentation](https://www.terraform.io/docs)
- [HashiCorp Local Provider](https://registry.terraform.io/providers/hashicorp/local/latest)
- [GitHub Actions CI/CD](https://docs.github.com/en/actions)

---

## Quick Start Commands

```bash
# 1. Calculator
cd CLPIPPy
pip install -r requirements.txt
pytest test_calculator.py -v

# 2. Autoscaler
cd ../autoscaler
pip install -r requirements.txt
python app.py

# 3. To-Do API
cd ../todo-api
pip install -r requirements.txt
docker build -t todo-api:v1.0.0 .
docker run -p 5000:5000 todo-api:v1.0.0

# 4. Health Monitor
cd ../health_monitor
bash health_check.sh
cat server_health.log

# 5. Kubernetes Deployment
cd ../k8sheal
docker build -t k8sheal:latest .
kubectl apply -f deployment.yaml
kubectl get pods

# 6. IAC Linting & Validation
cd ../iac-cicd-lab
terraform init -backend=false
terraform fmt -check -recursive
terraform validate
terraform plan
terraform apply
```

---

## Completion Checklist

- ☐ All CLPIPPy tests passing
- ☐ Autoscaler Docker image built and deployed
- ☐ Autoscaler HPA configured and working
- ☐ To-Do API Docker image built and tested
- ☐ To-Do API published to Docker Hub
- ☐ To-Do API endpoints verified (CRUD operations)
- ☐ Health monitor running and logging
- ☐ K8sheal deployment active with 3 replicas
- ☐ All Kubernetes services accessible
- ☐ Auto-healing verified (pods recovering automatically)
- ☐ Terraform format validation passing
- ☐ Terraform configuration validated
- ☐ IAC CICD GitHub Actions workflow running
- ☐ Documentation complete for all sub-projects" 
