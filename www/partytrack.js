(function() {
  function PartytrackPlugin() {}

  PartytrackPlugin.prototype.startWithAppIDAndKey = function(appId, appKey, onSuccess, onError) {
    cordova.exec(onSuccess, onError, 'PartyTrack', 'startWithAppIDAndKey', [appId, appKey]);
  }

  PartytrackPlugin.prototype.setConfigureWithNameAndValue = function(configureName, configureValue, onSuccess, onError) {
    cordova.exec(onSuccess, onError, 'PartyTrack', 'setConfigureWithNameAndValue', [configureName, configureValue]);
  }

  if (typeof module != 'undefined' && module.exports) {
    module.exports = new PartytrackPlugin();
  }
})();
