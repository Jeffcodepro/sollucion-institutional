# sollucion_site

## Deploy

Este repo tem pipeline proprio de deploy para a VPS via `docker build` + `docker save` + `docker load` + Portainer API.

Pre-requisitos:

- `./.env` com:
  - `SOLLUCION_DEV_HOST`
  - `SOLLUCION_DEV_USER`
  - `SOLLUCION_DEV_PASSWORD`
  - `SOLLUCION_DEV_PORTAINER_URL`
  - `SOLLUCION_DEV_PORTAINER_TOKEN`
  - opcional: `SOLLUCION_DEV_PORTAINER_ENDPOINT_ID`
  - opcional: `SOLLUCION_INSTITUTIONAL_DATABASE_PASSWORD`
  - `SECRET_KEY_BASE`
  - `SMTP_ADDRESS`
  - `SMTP_PORT`
  - `SMTP_DOMAIN`
  - `SMTP_USERNAME`
  - `SMTP_PASSWORD`
  - opcionais: `MAIL_FROM`, `MAIL_TO`, `CONTACT_FORM_FROM_EMAIL`, `CONTACT_FORM_TO_EMAIL`

Comando:

```bash
node scripts/deploy_portainer_stack.mjs
```

Sem check final de URL:

```bash
node scripts/deploy_portainer_stack.mjs --skip-url-check
```

Arquivos do pipeline:

- `deploy/stack.template.yml`
- `scripts/deploy_portainer_stack.mjs`

## Contact form email

The contact form stores leads in `contact_leads` and sends an email through Action Mailer.

Environment variables supported by the project:

```bash
CONTACT_FORM_TO_EMAIL=contato@sollucion.com
CONTACT_FORM_FROM_EMAIL=contato@sollucion.com
SMTP_ADDRESS=
SMTP_PORT=587
SMTP_DOMAIN=
SMTP_USERNAME=
SMTP_PASSWORD=
SMTP_AUTHENTICATION=plain
SMTP_ENABLE_STARTTLS_AUTO=true
```
