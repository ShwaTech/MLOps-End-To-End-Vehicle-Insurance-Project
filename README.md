# MLOps-End-To-End-Vehicle-Insurance-Project

Vehicle insurance classification MLOps lifecycle from data ingestion to model evaluation and deployment on AWS.Leveraging MongoDB as the primary database, Scikit-learn for model building, and FastAPI as a backend with a simple UI. The workflow integrates CI/CD pipelines using CircleCI and automates infrastructure provisioning on AWS with Terraform.

## Project Structure

```bash
/
├── .circleci/
│   └── config.yml
├── notebook
│   ├── 
│   ├── mongodb_demo.ipynb
│   └── experiments.ipynb
├── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   ├── envs/
│   │   ├── dev.tfvars
│   │   └── prod.tfvars
│   └── modules/
│       ├── iam/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── ec2/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       ├── ecr/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       └── s3_bucket/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
├── src/
│   ├── __init__.py
│   ├── components/
│   │   ├── __init__.py
│   │   ├── comp_01_data_ingestion.py
│   │   ├── comp_02_data_validation.py
│   │   ├── comp_03_data_transformation.py
│   │   ├── comp_04_model_trainer.py
│   │   ├── comp_05_model_evaluation.py
│   │   └── comp_06_model_pusher.py
│   │    configuration/
│   │    ├── __init__.py
│   │    ├── mongo_db_connection.py
│   │    └── aws_connection.py
│   │    cloud_storage/
│   │    ├── __init__.py
│   │    └── aws_storage.py
│   │    data_access/
│   │    ├── __init__.py
│   │    └── vehicle_data.py
│   │    constants/
│   │    └── __init__.py
│   │    entity/
│   │    ├── __init__.py
│   │    ├── config_entity.py
│   │    ├── artifact_entity.py
│   │    ├── estimator.py
│   │    └── s3_estimator.py
│   │    exception/
│   │    └── __init__.py
│   │    logger/
│   │    └── __init__.py
│   │    pipline/
│   │    ├── __init__.py
│   │    ├── stage_01_training_pipeline.py
│   │    └── stage_02_prediction_pipeline.py
│   │    utils/
│   │    ├── __init__.py
│   │    └── main_utils.py
│   │    config/
│   │    ├── model.py
│   └─── └── schema.py
├── app.py
├── requirements.txt
├── Dockerfile
├── .dockerignore
├── demo.py
├── setup.py
├── Project-Flow.txt
├── pyproject.toml
├── template.py
├── README.md
└── LICENSE
```

## For That Project Guidance -> Look at Project-Flow.txt

## Run The App From -> http://<EC2_PUBLIC_IP>:5000
