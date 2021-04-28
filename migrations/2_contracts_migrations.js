const EtherUnits = artifacts.require("EtherUnits");
const Gas = artifacts.require("Gas");


module.exports= function(deployer){
    deployer.deploy(EtherUnits);
    deployer.deploy(Gas);
};