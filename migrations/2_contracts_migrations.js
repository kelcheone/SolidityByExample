const EtherUnits = artifacts.require("EtherUnits");
const Gas = artifacts.require("Gas");
const IfElse = artifacts.require("IfElse");
const Loop = artifacts.require("Loop");
const Mapping = artifacts.require("Mapping", 'NestedMapping');
const Array = artifacts.require("Array", 'CompactArray');


module.exports= function(deployer){
    deployer.deploy(EtherUnits);
    deployer.deploy(Gas);
    deployer.deploy(IfElse);
    deployer.deploy(Loop);
    deployer.deploy(Mapping);
    deployer.deploy(Array);
};