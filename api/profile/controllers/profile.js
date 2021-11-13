'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

 const _ = require('lodash');
 const { sanitizeEntity } = require('strapi-utils');
 
 const sanitizeUser = user =>
   sanitizeEntity(user, {
     model: strapi.query('user', 'users-permissions').model,
   });
module.exports = {
    async changePassword(ctx) {
        const userFromContext = ctx.state.user;
        if (!userFromContext) {
          return ctx.badRequest(null, [{ messages: [{ id: 'No authorization header was found' }] }]);
        }
    
        const params = _.assign({}, ctx.request.body);
        if (
          params.currentPassword &&
          params.newPassword &&
          params.confirmNewPassword &&
          params.newPassword === params.confirmNewPassword
        ) {
    
          const user = await strapi.plugins['users-permissions'].services.user.fetch({
            id: userFromContext.id,
          }, ['role']);
    
          const validPassword = await strapi.plugins['users-permissions'].services.user.validatePassword(params.currentPassword, user.password);
    
          if (!user) {
            return ctx.badRequest('User tidak ditemukan');
          }
    
          if (!validPassword) {
            return ctx.badRequest('Password salah')
          }
    
          let updateData = { password: params.newPassword };
          const data = await strapi.plugins['users-permissions'].services.user.edit({ id: user.id }, updateData);
          return ctx.send(sanitizeUser(data));
        }
    
        return ctx.badRequest('Password baru tidak sesuai');
      }
};
