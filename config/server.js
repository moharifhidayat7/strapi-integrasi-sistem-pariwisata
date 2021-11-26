module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: 'http://api.rumahdigitalgombengsari.com',
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '37d7fbf4a2b1af6aaaad02ee71111f2a'),
    },
  },
});
