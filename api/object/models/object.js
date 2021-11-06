'use strict';

const slugify = require('slugify');

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

function YouTubeGetID(url){
  url = url.split(/(vi\/|v%3D|v=|\/v\/|youtu\.be\/|\/embed\/)/);
  return undefined !== url[2]?url[2].split(/[^0-9a-z_\-]/i)[0]:url[0];
}

module.exports = {
    lifecycles: {
        async beforeCreate(data) {
          if (data.name) {
            data.slug = slugify(data.name, {lower: true});
          }
          if(data.youtube) {
            data.youtube = 'https://youtube.com/embed/'+YouTubeGetID(data.youtube)
          }
        },
        async beforeUpdate(params, data) {
          if (data.name) {
            data.slug = slugify(data.name, {lower: true});
          }
          if(data.youtube) {
            data.youtube = 'https://youtube.com/embed/'+YouTubeGetID(data.youtube)
          }
        },
      },
};
