FROM python:3.10

# Dependencies
RUN set -x; \
    apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    fonts-noto-cjk \
    libssl-dev \
    libjpeg-dev \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    libldap2-dev \
    libsasl2-dev \
    libtiff5-dev \
    libopenjp2-7-dev \
    libwebp-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libxcb1-dev \
    libx11-dev \
    libxext6 \
    libxrender1 \
    libxrandr2 \
    libfontconfig1 \
    xz-utils \
    wkhtmltopdf \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create odoo user
RUN useradd -m -d /opt/odoo -U -r -s /bin/bash odoo

# Install Odoo
WORKDIR /opt/odoo
COPY . /opt/odoo
RUN pip install -r requirements.txt

# Entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8069 8071
CMD ["odoo"]
