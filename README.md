# Test Data Management

> Comprehensive examples for **Benerator** (XML/Java) and **DataMimic** (Python) test data generators.

**Total Examples:** 8 files (4 Benerator + 4 DataMimic)

---

## 🚀 Quick Start

### Benerator Examples

```bash
cd benerator/quickstart
benerator hello-world.ben.xml
benerator simple-csv-export.ben.xml
```

### DataMimic Examples

```bash
cd datamimic
source venv/bin/activate  # Important!

cd quickstart
python hello-world.py
python with-seed.py
```

---

## 📂 Repository Structure

```
TDM/
├── benerator/              # XML-based test data generation
│   ├── quickstart/         # Hello world, CSV export
│   │   ├── hello-world.ben.xml
│   │   └── simple-csv-export.ben.xml
│   ├── anonymization/      # Data masking demo
│   │   └── masking-demo.ben.xml
│   ├── ecommerce/          # Complete shop with relationships
│   │   └── complete-shop.ben.xml
│   ├── data/               # Input files for anonymization
│   └── output/             # Generated files (git ignored)
│
└── datamimic/              # Python-based test data generation
    ├── quickstart/         # Hello world, deterministic
    │   ├── hello-world.py
    │   └── with-seed.py
    ├── healthcare/         # Age-appropriate patient data
    │   ├── constrained-demographics.py
    │   └── complete-hospital.py
    ├── venv/               # Virtual environment (git ignored)
    ├── examples-output/    # Generated files (git ignored)
    └── requirements.txt
```

---

## 🎯 Highlights

### 🔵 Benerator (XML-based, Java)

**1. Hello World** - Console output, basic XML syntax

```bash
cd benerator/quickstart
benerator hello-world.ben.xml
```

**2. CSV Export + Deterministic** - Same seed = same data

```bash
benerator simple-csv-export.ben.xml
# Run twice - identical results!
```

**3. Data Anonymization** - GDPR-compliant masking

```bash
cd ../anonymization
benerator masking-demo.ben.xml
# Input: data/sample-customers.csv
# Output: output/customers-masked.csv
```

**4. Complete E-commerce** - Relationships & distributions

```bash
cd ../ecommerce
benerator complete-shop.ben.xml
# Generates: 20 products, 50 customers, 100 orders, 200 items
```

---

### 🟢 DataMimic (Python-based)

**1. Hello World** - Domain-specific patient data

```bash
cd datamimic/quickstart
python hello-world.py
```

**2. Deterministic** - Seed-based reproducibility

```bash
python with-seed.py
# Run twice - identical patients!
```

**3. Age-Appropriate Conditions** - Domain intelligence

```bash
cd ../healthcare
python constrained-demographics.py
# 70-year-olds: Hypertension, Diabetes
# 25-year-olds: Healthy
# No nonsense data!
```

**4. Complete Hospital** - Relationships like e-commerce

```bash
python complete-hospital.py
# Generates: 20 doctors, 100 patients, 150 appointments
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
