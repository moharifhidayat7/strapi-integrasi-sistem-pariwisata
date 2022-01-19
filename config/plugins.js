module.exports = ({ env }) => ({
    // ...
    email: {
      provider: env('EMAIL_PROVIDER'),
      providerOptions: {
        host: env('EMAIL_SMTP_HOST', 'smtp.example.com'),
        port: env('EMAIL_SMTP_PORT', 25),
        secure: env('EMAIL_SMTP_SECURE', false),
        auth: {
          user: env('EMAIL_SMTP_USER'),
          pass: env('EMAIL_SMTP_PASS'),
        },
      },
      settings: {
        defaultFrom: 'noreply@rumahdigitalgombengsari.com',
        defaultReplyTo: 'noreply@rumahdigitalgombengsari.com',
      },
    },
    // ...
  })