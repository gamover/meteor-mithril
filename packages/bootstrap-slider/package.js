Package.describe({
  name: 'gamover:bootstrap-slider',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Npm.depends({
  'bootstrap-slider': '5.2.0'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.0.2');
  api.use('ecmascript');
  api.addFiles('.npm/package/node_modules/bootstrap-slider/css/bootstrap-slider.css', 'client');
  api.addFiles('.npm/package/node_modules/bootstrap-slider/js/bootstrap-slider.js', 'client');
});