'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

module.exports = {
    lifecycles: {
        async beforeCreate(data) {
            await strapi.query('user', "users-permissions").create({
                email: data.email,
                name: data.name,
                password: data.password,
                phone: data.phone,
                role: "3",
            })
        },
      },
};
