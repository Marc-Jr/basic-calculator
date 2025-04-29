
---

```
#  Basic Calculator (Multi-Java Version)

A simple command-line calculator built in Java that performs basic arithmetic operations (`+`, `-`, `*`, `/`).  
The project includes a Docker setup that compiles the Java code using **Java 8**, **Java 11**, and **Java 17**—without installing any JDKs locally.

---

##  Features

- Basic math operations: addition, subtraction, multiplication, division
- Input from the user via command line
- Handles divide-by-zero errors
- Dockerfile supports compilation with multiple Java versions (8, 11, 17)
- GitHub Actions workflow builds and tests automatically

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Marc-Jr/basic-calculator.git
cd basic-calculator
```

### 2. Build Using Docker

```bash
docker build -t multi-java-calculator .
```

### 3. Extract Compiled Files

```bash
docker create --name temp_calc multi-java-calculator
docker cp temp_calc:/build ./compiled
docker rm temp_calc
```

The compiled `.class` files will be available in:

```
compiled/
├── java8/
├── java11/
└── java17/
```

---

## ⚙️ GitHub Actions

This repository includes a CI/CD pipeline using **GitHub Actions** that automatically:

- Builds the project using Docker
- Compiles with Java 8, 11, and 17
- Lists compiled output in the workflow log

---


## 🧑‍💻 Author

**Marc-Jr**  
[GitHub Profile »](https://github.com/Marc-Jr)

---

## 📄 License

This project is open-source and free to use.
```
