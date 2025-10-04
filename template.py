import os
from pathlib import Path

project_name = "src"

list_of_files = [
    f".circleci/config.yml",
    f"terraform/main.tf",
    f"terraform/providers.tf",
    f"terraform/variables.tf",
    f"terraform/outputs.tf",
    f"terraform/backend.tf",
    f"terraform/bootstrap/bootstrap.tf",
    f"terraform/envs/dev.tfvars",
    f"terraform/envs/prod.tfvars",
    f"terraform/modules/iam/main.tf",
    f"terraform/modules/iam/variables.tf",
    f"terraform/modules/iam/outputs.tf",
    f"terraform/modules/ec2/main.tf",
    f"terraform/modules/ec2/variables.tf",
    f"terraform/modules/ec2/outputs.tf",
    f"terraform/modules/ecr/main.tf",
    f"terraform/modules/ecr/variables.tf",
    f"terraform/modules/ecr/outputs.tf",
    f"terraform/modules/s3_bucket/main.tf",
    f"terraform/modules/s3_bucket/variables.tf",
    f"terraform/modules/s3_bucket/outputs.tf",
    f"notebook/mongodb_demo.ipynb",
    f"notebook/experiments.ipynb",
    f"{project_name}/__init__.py",
    f"{project_name}/components/__init__.py",
    f"{project_name}/components/comp_01_data_ingestion.py",  
    f"{project_name}/components/comp_02_data_validation.py",
    f"{project_name}/components/comp_03_data_transformation.py",
    f"{project_name}/components/comp_04_model_trainer.py",
    f"{project_name}/components/comp_05_model_evaluation.py",
    f"{project_name}/components/comp_06_model_pusher.py",
    f"{project_name}/configuration/__init__.py",
    f"{project_name}/configuration/mongo_db_connection.py",
    f"{project_name}/configuration/aws_connection.py",
    f"{project_name}/cloud_storage/__init__.py",
    f"{project_name}/cloud_storage/aws_storage.py",
    f"{project_name}/data_access/__init__.py",
    f"{project_name}/data_access/vehicle_data.py",
    f"{project_name}/constants/__init__.py",
    f"{project_name}/entity/__init__.py",
    f"{project_name}/entity/config_entity.py",
    f"{project_name}/entity/artifact_entity.py",
    f"{project_name}/entity/estimator.py",
    f"{project_name}/entity/s3_estimator.py",
    f"{project_name}/exception/__init__.py",
    f"{project_name}/logger/__init__.py",
    f"{project_name}/pipeline/__init__.py",
    f"{project_name}/pipeline/stage_01_training_pipeline.py",
    f"{project_name}/pipeline/stage_02_prediction_pipeline.py",
    f"{project_name}/utils/__init__.py",
    f"{project_name}/utils/main_utils.py",
    "config/model.yaml",
    "config/schema.yaml",
    "app.py",
    "requirements.txt",
    "Dockerfile",
    ".dockerignore",
    "demo.py",
    "setup.py",
    "pyproject.toml",
]


for filepath in list_of_files:
    filepath = Path(filepath)
    filedir, filename = os.path.split(filepath)
    if filedir != "":
        os.makedirs(filedir, exist_ok=True)
    if (not os.path.exists(filepath)) or (os.path.getsize(filepath) == 0):
        with open(filepath, "w") as f:
            pass
    else:
        print(f"file is already present at: {filepath}")