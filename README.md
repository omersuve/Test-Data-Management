# Test Data Management

> Comprehensive examples for **Benerator** (XML/Java) and **DataMimic** (Python) test data generators.

**Total Examples:** 12 demos (6 Benerator + 6 DataMimic)

---

## 🚀 Quick Start

### Run All Demos (Master Script)

```bash
./RUN-ALL-DEMOS.sh
# Interactive - runs all 12 demos with pauses between each
```

### Individual Demo Scripts

All individual demo scripts are organized in the `demos/` directory:

**Benerator:**

```bash
./demos/benerator-person.sh       # Generate people
./demos/benerator-product.sh      # Generate products
./demos/benerator-company.sh      # Generate companies
./demos/benerator-distributions.sh # Statistical patterns
./demos/benerator-anonymization.sh # Data masking
./demos/benerator-ecommerce.sh    # Complete e-commerce
```

**DataMimic:**

```bash
./demos/datamimic-basic-patient.sh    # Generate patients
./demos/datamimic-account.sh          # Generate bank accounts
./demos/datamimic-doctor.sh           # Generate doctors
./demos/datamimic-deterministic.sh    # Seed-based reproducibility
./demos/datamimic-age-appropriate.sh  # Domain intelligence
./demos/datamimic-hospital.sh         # Complete hospital system
```

---

## 📂 Repository Structure

```
TDM/
├── RUN-ALL-DEMOS.sh           # Master script - runs all demos
├── demos/                     # Individual demo scripts (12 total)
│   ├── benerator-*.sh         # Benerator demos (6)
│   └── datamimic-*.sh         # DataMimic demos (6)
│
├── benerator/                 # XML-based test data generation
│   ├── quickstart/            # Basic examples
│   │   ├── simple-csv-person.ben.xml
│   │   ├── simple-csv-product.ben.xml
│   │   └── simple-csv-company.ben.xml
│   ├── anonymization/         # Data masking
│   │   └── masking-demo.ben.xml
│   ├── distributions/         # Statistical patterns
│   │   └── realistic-patterns.ben.xml
│   ├── ecommerce/             # Complete shop
│   │   └── complete-shop.ben.xml
│   ├── data/                  # Input files
│   └── output/                # Generated files (git ignored)
│
└── datamimic/                 # Python-based test data generation
    ├── quickstart/            # Basic examples
    │   ├── basic-patient.py
    │   ├── basic-account.py
    │   └── basic-doctor.py
    ├── healthcare/            # Domain-specific
    │   ├── constrained-demographics.py
    │   ├── deterministic.py
    │   └── complete-hospital.py
    ├── venv/                  # Virtual environment (git ignored)
    └── examples-output/       # Generated files (git ignored)
```

---

## 🎯 Demo Flow

### 🔵 Benerator Demos (6 total)

**1. Person Generation** - Pattern-based CSV export

```bash
./demo-benerator-person.sh
```

**2. Product Generation** - Pattern-based product data

```bash
./demo-benerator-product.sh
```

**3. Company Generation** - Organization data with revenue

```bash
./demo-benerator-company.sh
```

**4. Statistical Distributions** - Gaussian, Exponential, Weighted

```bash
./demo-benerator-distributions.sh
```

**5. Data Anonymization** - GDPR-compliant masking

```bash
./demo-benerator-anonymization.sh
# Input: data/sample-customers.csv → Masked output
```

**6. Complete E-commerce** - Relational data (products→orders→items)

```bash
./demo-benerator-ecommerce.sh
```

---

### 🟢 DataMimic Demos (6 total)

**1. Patient Generation** - Domain-specific healthcare data

```bash
./demo-datamimic-basic-patient.sh
```

**2. Bank Account Generation** - Finance domain

```bash
./demo-datamimic-account.sh
```

**3. Doctor Generation** - Healthcare professionals

```bash
./demo-datamimic-doctor.sh
```

**4. Deterministic Generation** - Seed-based reproducibility

```bash
./demo-datamimic-deterministic.sh
# Run twice → identical output!
```

**5. Age-Appropriate Data** - Domain intelligence

```bash
./demo-datamimic-age-appropriate.sh
# 70-year-olds: Hypertension, Diabetes
# 25-year-olds: Healthy (no nonsense data!)
```

**6. Complete Hospital** - Relational system (doctors→patients→appointments)

```bash
./demo-datamimic-hospital.sh
```

---

## 🔑 Key Features Comparison

| Feature            | Benerator                    | DataMimic                   |
| ------------------ | ---------------------------- | --------------------------- |
| **Deterministic**  | ✅ defaultSeed               | ✅ rng=Random(seed)         |
| **Configuration**  | XML files                    | Python code                 |
| **File Formats**   | CSV, Excel, XML, Fixed-width | CSV (via Python)            |
| **Domain Logic**   | Generic generators           | Specialized services        |
| **Anonymization**  | Built-in masking             | Limited                     |
| **Best For**       | File formats, distributions  | Healthcare, Finance domains |
| **Learning Curve** | Moderate                     | Gentle                      |

---

## 🛠️ Setup Instructions

### Prerequisites

**Benerator:**

- Java 8+ installed
- Benerator installed ([Download](https://www.benerator.de/))

**DataMimic:**

- Python 3.11+
- Virtual environment

### Installation

#### Benerator

```bash
# No additional setup needed
# Just ensure 'benerator' command is in PATH
benerator --version
```

#### DataMimic

```bash
cd datamimic

# Create virtual environment (if needed)
python3 -m venv venv

# Activate
source venv/bin/activate  # macOS/Linux
# venv\Scripts\activate   # Windows

# Install dependencies
pip install -r requirements.txt
```

## 💡 Key Takeaways

### Why Benerator?

- ✅ **Mature & Proven** - Enterprise-ready
- ✅ **File Format Variety** - CSV, Excel, XML, Fixed-width
- ✅ **Statistical Distributions** - Gaussian, Exponential
- ✅ **Data Anonymization** - Built-in masking

### Why DataMimic?

- ✅ **Domain-Specific** - Healthcare, Finance intelligence
- ✅ **Modern Python** - Easy integration
- ✅ **Realistic Data** - Age-appropriate conditions
- ✅ **Pythonic API** - Natural code style

### Both Tools Provide:

- 🔒 **Deterministic Generation** - Reproducible test data
- 🔗 **Relationships** - Connected entities
- 🎯 **Production-Ready** - Used in real enterprises
- 📚 **Well-Documented** - Clear examples

---

This repository demonstrates:

- **Two approaches** to test data generation
- **Deterministic generation** for reproducible testing
- **Domain-specific intelligence** vs generic generators
- **Data anonymization** for privacy compliance
- **Relationship modeling** across entities
- **Production-ready** patterns and practices

---

## 📝 Notes

- **Output directories** are empty initially - files generated on run
- **Seed-based generation** ensures identical results across runs
- **Age-appropriate data** prevents nonsense (no "25-year-old with Alzheimer's")
- **Relationships** maintained across generated entities

---

## 🔗 Resources

- [Benerator Documentation](https://www.benerator.de/documentation)
- [DataMimic Documentation](https://datamimic.io)
