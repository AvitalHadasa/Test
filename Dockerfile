FROM python:3.11-slim\n\nWORKDIR /app\n\nCOPY requirements.txt .\nRUN pip install --no-cache-dir -r requirements.txt\n\nCOPY convert_image_to_pdf.py .\n\nCMD ["python", "convert_image_to_pdf.py"]
