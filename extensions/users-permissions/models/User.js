module.exports = {
    lifecycles: {
        async beforeCreate(data) {
          if(data.email){
              data.username = data.email
          }
        },
        async beforeUpdate(params, data) {
            if(data.email){
                data.username = data.email
            }
        },
      },
};