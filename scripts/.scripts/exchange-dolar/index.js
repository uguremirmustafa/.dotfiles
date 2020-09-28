const axios = require('axios');

axios.get('https://api.exchangeratesapi.io/latest?base=USD')
  .then(data=>console.log("1$ = "+data.data.rates.TRY.toFixed(2)+" TRY"))
