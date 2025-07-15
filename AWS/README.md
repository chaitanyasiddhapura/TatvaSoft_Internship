# Tatvasoft Internship Project: AWS Cloud & S3 Website Hosting

Welcome to the documentation for my internship project at **Tatvasoft**, where I explored the fundamentals of **Cloud Computing**, **Amazon Web Services (AWS)**, and **Static Website Hosting using S3**. This `README.md` provides a summary of my learning journey, project setup, and step-by-step deployment guide.

---

## 🌩️ What is Cloud Computing?

Cloud Computing allows users to access computing resources like servers, storage, and applications over the internet on-demand.

**Key Concepts:**
- **On-Demand Access** – Pay only for what you use.
- **Scalability** – Scale resources up/down as needed.
- **Shared Pool** – Access from anywhere.
- **Cost-Efficient** – No need for upfront infrastructure.

### Models of Cloud Computing:
- **SaaS** (e.g., Gmail, Google Docs)
- **PaaS** (e.g., AWS Elastic Beanstalk)
- **IaaS** (e.g., AWS EC2)

---

## ☁️ Introduction to AWS

**Amazon Web Services (AWS)** is a comprehensive and evolving cloud platform with over **200 services**.

### Key Features:
- Pay-as-you-go pricing
- Secure & scalable infrastructure
- Global data centers (Regions & Availability Zones)
- Services include compute, storage, database, AI/ML, and more

---

## 🧩 AWS Core Services Covered

### 🚀 Compute
- **EC2** – Virtual servers
- **Lambda** – Serverless compute
- **Elastic Beanstalk** – App deployment

### 📦 Storage
- **S3** – Object storage
- **EBS** – Block storage
- **Glacier** – Archival storage

### 🛢️ Database
- **RDS** – Relational DBs (MySQL, PostgreSQL)
- **DynamoDB** – NoSQL
- **Aurora** – High-performance cloud-native DB

### 🌐 Networking
- **VPC**, **Route 53**, **CloudFront**

---

## 🌍 AWS Regions & Availability Zones

- **Region**: Geographical location (e.g., `us-east-1`)
- **Availability Zone**: Isolated data centers in a region for fault tolerance
- Ensures high availability and low latency

---

## 🌐 Hosting a Static Website on AWS S3

### Prerequisites:
- AWS account
- Website files (HTML, CSS, JS)
- Node.js and npm

---

## 🚧 Project Setup & Build

```bash
# Clone the repository
git clone https://gitlab.anasource.com/Vijay_Kansagara/ci_platfrom_app

# Navigate to the project folder
cd ci_platfrom_app

# Install dependencies
npm install

# Build the project
npm run build
```

## 🪣 S3 Bucket Configuration
Create an S3 Bucket
```bush
Name: ciplatformbucket
Type: General Purpose
Disable "Block all public access"
```

Enable Static Website Hosting and provide index and error HTML files

Upload contents from the `build folder`

Set Bucket Policy.
Add this policy to allow public access:
```bush
{
  "Version": "2008-10-17",
  "Id": "PolicyForPublicAccess",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::ciplatformbucket/*"
    }
  ]
}
```
### 🌐 Custom Domain Setup (Optional)
- Register a domain (Route 53 or external)
- Add a CNAME record pointing to:
```bush 
ciplatformbucket.s3-website-us-east-1.amazonaws.com
```

### ✅ Website Live
- After configuration, you will get a public URL
- Open it in any browser to view your hosted static site

## 🙌 Thank You
Thanks to Tatvasoft for this opportunity to learn and explore AWS!