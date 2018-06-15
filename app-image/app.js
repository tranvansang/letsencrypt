let express = require('express');
let app = express();
app.use('*', express.static('public'));
app.listen(8080, ()=>{
	console.log("App listening on port 8080");
});
