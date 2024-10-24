# CDC Salesforce Kafka Integration

This guide will walk you through creating a Salesforce connector using Confluent.

## Prerequisites
Make sure you have the following:
- A Confluent account
- Docker installed
- Salesforce credentials

## Steps to Set Up the Salesforce Connector

### 1. Configure Authentication
Create an `auth.env` file inside the `app` folder with the following structure:

```bash
EMAIL="your_confluent_email"
PASSWORD="your_confluent_password"
CONNECT_JSON="salesforce_cdc_source.json"
CLUSTER="your_confluent_cluster"
```
### 2. Build the Docker Image
Follow these commands to build and run the Docker container:


* To build the Docker image, run the following command:

```bash
    docker build -t [build_name] .
```

* After building the image, run the container with:

```bash
    docker run -it [image_name]
```

### 3. Verify on Confluent
Log in to your Confluent account and verify that the connector has been set up correctly.

___

By following these steps, you should be able to connect Salesforce CDC with Kafka using Confluent. If you encounter any issues, refer to the Confluent documentation for troubleshooting.

