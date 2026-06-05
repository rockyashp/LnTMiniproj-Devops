# LnTMiniProd - DevOps Mini Project

DevOps mini project showcasing Kubernetes, Docker, autoscaling, health monitoring, and CI/CD.

## Prerequisites

- Python 3.8+
- Docker
- Kubernetes (Minikube)
- kubectl
- pytest (for testing)

---

## Project To-Do Guide

### 1. CLPIPPy - Python Calculator

**Description:** Unit-tested Python calculator application with CI/CD pipeline integration.

**Major Steps:**

- [ ] **Setup & Dependencies**
  - [ ] Navigate to `CLPIPPy/` directory
  - [ ] Review `requirements.txt` for dependencies
  - [ ] Create virtual environment: `python -m venv venv`
  - [ ] Activate environment: `source venv/bin/activate` (Linux/Mac) or `venv\Scripts\activate` (Windows)
  - [ ] Install dependencies: `pip install -r requirements.txt`

- [ ] **Development & Testing**
  - [ ] Review calculator functions in `calculator.py` (add, subtract, multiply, divide)
  - [ ] Run unit tests: `pytest test_calculator.py -v`
  - [ ] Verify all tests pass (100% success rate)
  - [ ] Add additional edge case tests if needed

- [ ] **Code Quality**
  - [ ] Review code for PEP 8 compliance
  - [ ] Add type hints to function signatures
  - [ ] Add docstrings to all functions
  - [ ] Run linter: `pylint calculator.py` (optional)

- [ ] **CI/CD Integration**
  - [ ] Create `.github/workflows/` directory (if using GitHub)
  - [ ] Setup automated test pipeline
  - [ ] Configure deployment steps
  - [ ] Test pipeline execution

- [ ] **Documentation**
  - [ ] Update sub-project README with usage examples
  - [ ] Document test execution steps
  - [ ] Add any additional features planned

---

### 2. Autoscaler - Flask CPU Load Simulator

**Description:** Flask application that simulates CPU load for testing Kubernetes horizontal pod autoscaling.

**Major Steps:**

- [ ] **Setup & Configuration**
  - [ ] Navigate to `autoscaler/` directory
  - [ ] Review `requirements.txt` dependencies
  - [ ] Install dependencies: `pip install -r requirements.txt`
  - [ ] Review current `app.py` implementation

- [ ] **Local Testing**
  - [ ] Start Flask app: `python app.py`
  - [ ] Test endpoint: `curl http://localhost:5000/`
  - [ ] Verify CPU load simulation is working
  - [ ] Monitor system resource usage during load

- [ ] **Docker Containerization**
  - [ ] Review `Dockerfile` configuration
  - [ ] Build Docker image: `docker build -t autoscaler:latest .`
  - [ ] Test container locally: `docker run -p 5000:5000 autoscaler:latest`
  - [ ] Verify container works as expected
  - [ ] Push image to registry (if needed)

- [ ] **Kubernetes Deployment**
  - [ ] Create Kubernetes deployment manifest (if not exists)
  - [ ] Configure resource requests/limits for autoscaling
  - [ ] Deploy to cluster: `kubectl apply -f deployment.yaml`
  - [ ] Verify deployment status: `kubectl get pods`
  - [ ] Monitor logs: `kubectl logs -f deployment/autoscaler`

- [ ] **Autoscaling Configuration**
  - [ ] Create Horizontal Pod Autoscaler (HPA) manifest
  - [ ] Configure CPU threshold targets (e.g., 70%)
  - [ ] Set min/max replica counts
  - [ ] Apply HPA: `kubectl apply -f hpa.yaml`
  - [ ] Monitor scaling behavior during load testing

- [ ] **Testing & Validation**
  - [ ] Generate load to trigger autoscaling
  - [ ] Verify pods scale up when threshold exceeded
  - [ ] Verify pods scale down when load decreases
  - [ ] Review metrics: `kubectl top pods`

---

### 3. Health Monitor - System Health Monitoring

**Description:** Bash script that collects and logs system health metrics (uptime, disk usage, memory).

**Major Steps:**

- [ ] **Script Review & Enhancement**
  - [ ] Review `health_check.sh` script contents
  - [ ] Verify all monitoring sections (hostname, uptime, disk, memory, CPU)
  - [ ] Check log file output format and clarity

- [ ] **Local Testing**
  - [ ] Execute script: `bash health_check.sh`
  - [ ] Review generated `server_health.log`
  - [ ] Verify all metrics are captured correctly
  - [ ] Check timestamp accuracy

- [ ] **Scheduling & Automation**
  - [ ] Setup cron job for periodic execution (e.g., every 5 minutes)
  - [ ] Add crontab entry: `crontab -e`
  - [ ] Test cron execution and log generation
  - [ ] Verify logs are accumulating properly

- [ ] **Log Management**
  - [ ] Implement log rotation to prevent disk bloat
  - [ ] Configure retention policy (e.g., keep 30 days)
  - [ ] Setup log archival (optional)
  - [ ] Monitor log file size growth

- [ ] **Integration with Kubernetes (Optional)**
  - [ ] Create DaemonSet for cluster-wide monitoring
  - [ ] Mount shared volume for log collection
  - [ ] Configure pod-specific health checks
  - [ ] Setup log aggregation with centralized monitoring

- [ ] **Alerting (Optional)**
  - [ ] Define alert thresholds (disk %, memory %, CPU %)
  - [ ] Implement alert notifications
  - [ ] Setup email/Slack alerts for critical conditions
  - [ ] Document alert handling procedures

---

### 4. K8sheal - Kubernetes Auto-Healing Deployment

**Description:** Kubernetes deployment with 3 replicas featuring auto-healing, health checks, and service discovery.

**Major Steps:**

- [ ] **Docker Image Preparation**
  - [ ] Review `Dockerfile` configuration
  - [ ] Review `index.html` static content
  - [ ] Build Docker image: `docker build -t k8sheal:latest .`
  - [ ] Test image locally: `docker run -p 8080:80 k8sheal:latest`
  - [ ] Verify web server responds correctly

- [ ] **Kubernetes Deployment**
  - [ ] Review `deployment.yaml` structure and configuration
  - [ ] Verify replica count is set to 3
  - [ ] Check container port and image settings
  - [ ] Apply deployment: `kubectl apply -f deployment.yaml`
  - [ ] Verify deployment: `kubectl get deployments`
  - [ ] Verify pods running: `kubectl get pods`

- [ ] **Health Checks Configuration**
  - [ ] Add liveness probe to detect failed containers
  - [ ] Add readiness probe to detect ready pods
  - [ ] Configure probe intervals and thresholds
  - [ ] Test health check behavior

- [ ] **Service Setup**
  - [ ] Verify ClusterIP service is configured
  - [ ] Test internal service discovery: `kubectl get svc`
  - [ ] Create NodePort service for external access (optional)
  - [ ] Test external connectivity if NodePort used

- [ ] **Auto-Healing Testing**
  - [ ] Manually kill a pod: `kubectl delete pod <pod-name>`
  - [ ] Verify replacement pod is created automatically
  - [ ] Verify replica count returns to 3
  - [ ] Check pod logs for restart events

- [ ] **Monitoring & Verification**
  - [ ] View deployment status: `kubectl describe deployment k8sheal`
  - [ ] Monitor pod logs: `kubectl logs -f <pod-name>`
  - [ ] Check resource usage: `kubectl top pods`
  - [ ] Setup persistent monitoring (optional)

- [ ] **Rolling Updates (Optional)**
  - [ ] Update image or configuration
  - [ ] Verify rolling update strategy
  - [ ] Monitor update progress: `kubectl rollout status deployment/k8sheal`
  - [ ] Verify all pods updated successfully

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

# 3. Health Monitor
cd ../health_monitor
bash health_check.sh
cat server_health.log

# 4. Kubernetes Deployment
cd ../k8sheal
docker build -t k8sheal:latest .
kubectl apply -f deployment.yaml
kubectl get pods
```

---

## Completion Checklist

- [ ] All CLPIPPy tests passing
- [ ] Autoscaler Docker image built and deployed
- [ ] Autoscaler HPA configured and working
- [ ] Health monitor running and logging
- [ ] K8sheal deployment active with 3 replicas
- [ ] All services accessible
- [ ] Auto-healing verified (pods recovering automatically)
- [ ] Documentation complete for all sub-projects" 
