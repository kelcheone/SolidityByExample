const EtherUnits = artifacts.require("EtherUnits");
const Gas = artifacts.require("Gas");
const IfElse = artifacts.require("IfElse");


module.exports= function(deployer){
    deployer.deploy(EtherUnits);
    deployer.deploy(Gas);
    deployer.deploy(IfElse);
};