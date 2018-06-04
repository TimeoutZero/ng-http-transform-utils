
// ###
// # Module bundler
// ###

// Importing main module file
require('../app/index.module.coffee');

require('file-loader?name=[name].[ext]!../../package.json');

// Importing all component's scripts
var components = require.context('../app/components', true, /.(coffee|cjsx|js|jsx)$/);
components.keys().forEach(components);
