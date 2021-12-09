const express = require('express');

const app = express();

// Server static files
app.use(express.static('public', { 
    setHeaders: function (res, path, stat) {
        res.set('Cache-Control', 'public, max-age=31536000');
        if(path.endsWith('.wasm')) {
            res.set('Content-Type', 'application/wasm');
        }
    }
}));

app.listen(2222, () => {
  console.log('Server is running on port 2222');
});
