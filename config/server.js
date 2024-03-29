module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env('STRAPI_URL', '/'),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '37d7fbf4a2b1af6aaaad02ee71111f2a'),
    },
    watchIgnoreFiles: ["**/private/**"],
  },
});

  // url: 'https://api.rumahdigitalgombengsari.com',
