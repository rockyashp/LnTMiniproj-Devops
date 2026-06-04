"# LnTMiniProd - DevOps Mini Project

DevOps mini project showcasing Kubernetes, Docker, autoscaling, health monitoring, and CI/CD.

## Components

- **autoscaler/** - Flask app that simulates CPU load for testing autoscaling
- **CLPIPPy/** - Python calculator with unit tests and CI/CD pipeline
- **health_monitor/** - System health monitoring script (uptime, disk, memory)
- **k8sheal/** - Kubernetes deployment with 3 replicas and auto-healing

## Quick Start

```bash
# Autoscaler
cd autoscaler && pip install -r requirements.txt && python app.py

# Calculator tests
cd ../CLPIPPy && pip install -r requirements.txt && pytest test_calculator.py -v

# Health check
cd ../health_monitor && bash health_check.sh

# Kubernetes deployment
cd ../k8sheal && kubectl apply -f deployment.yaml
```

## Prerequisites

- Python 3.8+
- Docker
- Kubernetes (Minikube)
- kubectl" 
