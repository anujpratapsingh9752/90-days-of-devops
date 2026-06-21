# Base image choose kar rahe hain (Python 3.10 Alpine)
# Alpine lightweight hoti hai, isliye image size chhota rehta hai.
FROM python:3.10-alpine

# Container ke andar /app directory ko working directory bana rahe hain.
# Iske baad saari commands isi folder me execute hongi.
WORKDIR /app

# Sirf requirements.txt ko container me copy kar rahe hain.
# Isse Docker layer cache ka fayda milta hai.
COPY requirements.txt .

# requirements.txt me diye gaye Python packages install kar rahe hain.
# --no-cache-dir se pip cache store nahi karega, image chhoti rahegi.
RUN pip install --no-cache-dir -r requirements.txt

# Ab application ki baaki saari files container me copy kar rahe hain.
COPY . .

# Security ke liye ek non-root user bana rahe hain.
RUN adduser -D appuser

# Application ko root ki jagah appuser ke naam se run karenge.
USER appuser

# Application container ke andar port 5000 par chalegi.
# Ye sirf documentation ke liye hai, port publish nahi karta.
EXPOSE 5000

# Container start hote hi ye command automatically execute hogi.
CMD ["python", "app.py"]
