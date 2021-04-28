const EtherUnits = artifacts.require("EtherUnits");
const Gas = artifacts.require("Gas");
const IfElse = artifacts.require("IfElse");
const Loop = artifacts.require("Loop");


module.exports= function(deployer){
    deployer.deploy(EtherUnits);
    deployer.deploy(Gas);
    deployer.deploy(IfElse);
    deployer.deploy(Loop);
};