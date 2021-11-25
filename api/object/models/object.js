'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

const { sanitizeEntity } = require('strapi-utils');


function YouTubeGetID(url){
  url = url.split(/(vi\/|v%3D|v=|\/v\/|youtu\.be\/|\/embed\/)/);
  return undefined !== url[2]?url[2].split(/[^0-9a-z_\-]/i)[0]:'';
}

module.exports = {
    lifecycles: {
        async beforeCreate(data) {
          if(data.name){
            data.slug = await strapi.plugins['content-manager'].services.uid.generateUIDField({contentTypeUID:'application::object.object',field:'slug',data})
          }
          if(data.youtube) {
            data.youtube = 'https://youtube.com/embed/'+YouTubeGetID(data.youtube)
            if(YouTubeGetID(data.youtube)==''){
              delete data.youtube
            }
          }
          
        },
        async beforeUpdate(params, data) {
          const { id } = params;

          const entity = await strapi.services.object.findOne({ id });

          if(data.name && data.name != entity.name){
            data.slug = await strapi.plugins['content-manager'].services.uid.generateUIDField({contentTypeUID:'application::object.object',field:'slug',data})
          }

          if(data.youtube) {
            data.youtube = 'https://youtube.com/embed/'+YouTubeGetID(data.youtube)
            if(YouTubeGetID(data.youtube)==''){
              delete data.youtube
            }
          }
        },
        async afterCreate(result){
          // if(result.contact[0].email){
          //   await strapi.query('user', "users-permissions").create({
          //     email: result.contact[0].email,
          //     name: result.contact[0].name,
          //     password: Math.random().toString(36).substring(2,10).toUpperCase(),
          //     role: "3",
          //     objects: [result.id]
          //   })
          // }
        }
      },
};
