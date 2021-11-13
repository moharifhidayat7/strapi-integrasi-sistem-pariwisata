'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

module.exports = {
    lifecycles: {
        async beforeCreate(data) {
            await strapi.plugins['users-permissions'].services.user.add({
                confirmed: true,
                blocked: false,
                username: data.email,
                email: data.email,
                name: data.name,
                password: data.password,
                phone: data.phone,
                provider: "local",
                role: data.role,  
            });
            // await strapi.query('user', "users-permissions").create({
            //     email: data.email,
            //     name: data.name,
            //     password: password,
            //     phone: data.phone,
            //     role: "3",
            // })
        },
      },
};
