"""
Simplest possible DataMimic example.
Uses Healthcare PatientService for realistic data generation.
"""

from datamimic_ce.domains.healthcare.services import PatientService

# Create service and generate a patient
service = PatientService()
patient = service.generate()

print(f"Name: {patient.full_name}")
print(f"Age: {patient.age}")
print(f"Blood Type: {patient.blood_type}")
print(f"Conditions: {patient.conditions}")
