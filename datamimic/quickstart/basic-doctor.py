from datamimic_ce.domains.healthcare.services import DoctorService

print("=== DataMimic: Basic Doctor Generation ===\n")

service = DoctorService()

for i in range(3):
    doctor = service.generate()
    print(f"Doctor #{i+1}:")
    print(f"  Name: {doctor.full_name}")
    print(f"  Specialty: {doctor.specialty}")
    print(f"  License Number: {doctor.license_number}")
    print(f"  Years of Experience: {doctor.years_of_experience}")
    print()

