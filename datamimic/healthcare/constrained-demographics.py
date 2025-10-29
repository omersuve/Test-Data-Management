"""
Generate patients with specific demographic constraints.
Useful for targeted medical studies or age-specific research.
"""

from random import Random
from datamimic_ce.domains.common.models.demographic_config import DemographicConfig
from datamimic_ce.domains.healthcare.services import PatientService

print("Senior Patients (Age 70-75)\n")
print("-" * 70)

# Configure for senior patients
senior_config = DemographicConfig(age_min=70, age_max=75)
senior_service = PatientService(
    dataset="US",
    demographic_config=senior_config,
    rng=Random(42)  # Reproducible results
)

for i in range(3):
    patient = senior_service.generate()
    print(f"{patient.full_name:25} | Age: {patient.age} | {patient.conditions}")

print("\n" + "=" * 70)
print("\nPediatric Patients (Age 0-12)\n")
print("-" * 70)

# Configure for pediatric patients
pediatric_config = DemographicConfig(age_min=0, age_max=12)
pediatric_service = PatientService(
    dataset="US",
    demographic_config=pediatric_config,
    rng=Random(43)
)

for i in range(3):
    patient = pediatric_service.generate()
    print(f"{patient.full_name:25} | Age: {patient.age} | {patient.conditions}")

