"""
Finance Domain Example - Bank Account generation.
Shows DataMimic supports multiple domains beyond healthcare.
"""

from datamimic_ce.domains.finance.services import BankAccountService

# Create service and generate a bank account
service = BankAccountService()
account = service.generate()

print(f"Account Number: {account.account_number}")
print(f"Account Type: {account.account_type}")
print(f"Balance: ${account.balance:,.2f}")
print(f"Currency: {account.currency}")

