const IoTDataStorage = artifacts.require("IoTDataStorage");

module.exports = function (deployer) {
  deployer.deploy(IoTDataStorage);
};
