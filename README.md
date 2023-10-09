# Streaming Data Project from MSSQL Server to Azure Data Lake Storage Gen2 using CDC

This project demonstrates how to stream data from an MSSQL Server to Azure Data Lake Storage Gen2 using technologies such as Apache Kafka, Kafka Connect + Debezium, and Apache Nifi, all within Docker containers.

## Overview

In this project, we've created a data pipeline that allows us to capture real-time Change Data Capture (CDC) events from MSSQL Server and efficiently store them in Azure Data Lake Storage Gen2. Here's an overview of the key components of this project:

- **Docker**: We use Docker containers to isolate and orchestrate our components, making the development and deployment environment more consistent and portable.

- **Apache Kafka**: Kafka serves as our messaging platform, enabling the streaming of CDC events from MSSQL Server to Kafka topics.

- **Kafka Connect + Debezium**: We configure Kafka Connect with the Debezium SQL Server connector. This allows us to capture CDC events from MSSQL Server and transform them into Kafka topics for further processing.

- **Apache Nifi**: We use Apache Nifi to create processors that read data from Kafka topics and write it to Azure Data Lake Storage Gen2. We also configure data transformation as needed.

- **Azure Data Lake Storage Gen2**: Data Lake Storage Gen2 is our final destination where CDC events are stored and accessible for further analysis and processing.

## Environment Setup

Before getting started with implementing the solution, follow these setup steps:

1. Clone this repository:
git clone https://github.com/lucasjrocha/streaming-sqlserver-cdc-adls.git

2. Run the Docker command to build the image:
docker build . -t cdc:latest

3. Run the Docker Compose command to create the containers:
docker compose up -d

For more details and specific configurations for individual components, refer to the full article.

## Running the Project

After setup, you can run the project to start capturing and storing real-time CDC events. Ensure that the Apache Nifi processors are enabled and waiting for events.

## Future Work

This project is just the first step. In future work, I plan to write an additional article demonstrating how to consume and transform this data using Spark Streaming on Azure Databricks. Stay tuned for further updates.

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

## Feedback

If you encounter any issues or have suggestions for improvements, please feel free to share. Your feedback is valuable to us.

## Author

Lucas Rocha