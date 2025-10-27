"""
Deterministic generation using seeds.
Running this script multiple times will produce the same results.
"""

from random import Random
from datamimic_ce.domains.healthcare.services import PatientService

print("🎲 Deterministic Generation (with seed):")
print("Run this script multiple times - you'll get the same results!\n")
print("-" * 70)

# Generate with a fixed seed for reproducibility
service = PatientService(rng=Random(1337))

for i in range(3):
    patient = service.generate()
    print(f"{i+1}. {patient.full_name} - Age: {patient.age}, Conditions: {patient.conditions}")
