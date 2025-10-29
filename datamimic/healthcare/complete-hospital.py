"""
Complete Hospital System Demo
Shows relationships between doctors and patients - similar to e-commerce example
"""

import csv
import os
from random import Random
from datamimic_ce.domains.healthcare.services import PatientService, DoctorService

print("Complete Hospital System Demo")
print("=" * 80)

# Ensure output directory exists
output_dir = os.path.join(os.path.dirname(__file__), '..', 'examples-output')
os.makedirs(output_dir, exist_ok=True)

# Step 1: Generate Doctors
print("\nStep 1/3: Generating doctors...")
doctor_service = DoctorService()
doctors = []
specialties = ['Cardiology', 'Neurology', 'Pediatrics', 'Oncology', 'Emergency', 
               'Surgery', 'Internal Medicine', 'Family Medicine', 'Orthopedics', 'Radiology']

for i in range(20):
    doctor = doctor_service.generate()
    doctors.append({
        'doctor_id': i + 1,
        'full_name': doctor.full_name,
        'specialty': specialties[i % len(specialties)],
        'years_experience': (i + 1) * 2  # 2 to 40 years
    })

# Export doctors
doctors_file = os.path.join(output_dir, 'hospital-doctors.csv')
with open(doctors_file, 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=['doctor_id', 'full_name', 'specialty', 'years_experience'])
    writer.writeheader()
    writer.writerows(doctors)
print(f"[OK] Generated {len(doctors)} doctors")

# Step 2: Generate Patients with assigned doctors
print("\nStep 2/3: Generating patients...")
patient_service = PatientService(rng=Random(42))
patients = []

for i in range(100):
    patient = patient_service.generate()
    # Assign doctor based on conditions (simplified logic)
    doctor_id = (i % 20) + 1  # Round-robin assignment
    
    patients.append({
        'patient_id': i + 1,
        'full_name': patient.full_name,
        'age': patient.age,
        'blood_type': patient.blood_type,
        'conditions': ', '.join(patient.conditions) if patient.conditions else 'Healthy',
        'assigned_doctor_id': doctor_id
    })

# Export patients
patients_file = os.path.join(output_dir, 'hospital-patients.csv')
with open(patients_file, 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=['patient_id', 'full_name', 'age', 'blood_type', 'conditions', 'assigned_doctor_id'])
    writer.writeheader()
    writer.writerows(patients)
print(f"[OK] Generated {len(patients)} patients")

# Step 3: Generate Appointments (relationships)
print("\nStep 3/3: Generating appointments...")
appointments = []
import datetime
import random

for i in range(150):
    patient_id = random.randint(1, 100)
    patient = patients[patient_id - 1]
    doctor_id = patient['assigned_doctor_id']
    
    # Random date in 2024
    base_date = datetime.date(2024, 1, 1)
    days_offset = random.randint(0, 365)
    appointment_date = base_date + datetime.timedelta(days=days_offset)
    
    appointments.append({
        'appointment_id': i + 1,
        'patient_id': patient_id,
        'doctor_id': doctor_id,
        'date': appointment_date.strftime('%Y-%m-%d'),
        'type': random.choice(['Checkup', 'Follow-up', 'Emergency', 'Consultation']),
        'status': random.choice(['Scheduled', 'Scheduled', 'Scheduled', 'Completed', 'Completed', 'Cancelled'])
    })

# Export appointments
appointments_file = os.path.join(output_dir, 'hospital-appointments.csv')
with open(appointments_file, 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=['appointment_id', 'patient_id', 'doctor_id', 'date', 'type', 'status'])
    writer.writeheader()
    writer.writerows(appointments)
print(f"[OK] Generated {len(appointments)} appointments")

print("\n" + "=" * 80)
print("[OK] Complete hospital system generated!")
print(f"  - {len(doctors)} doctors across {len(specialties)} specialties")
print(f"  - {len(patients)} patients with age-appropriate conditions")
print(f"  - {len(appointments)} appointments (relationships)")
print()
print("Files created in examples-output/ directory:")
print("  - hospital-doctors.csv")
print("  - hospital-patients.csv")
print("  - hospital-appointments.csv")
print("=" * 80)

