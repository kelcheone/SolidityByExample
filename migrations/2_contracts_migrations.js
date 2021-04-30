const EtherUnits = artifacts.require("EtherUnits");
const Gas = artifacts.require("Gas");
const IfElse = artifacts.require("IfElse");
const Loop = artifacts.require("Loop");
const Mapping = artifacts.require("Mapping", 'NestedMapping');
const Array = artifacts.require("Array", 'CompactArray');
const Enum = artifacts.require("Enum");
const Structs = artifacts.require("Todos");
const Error = artifacts.require("Error");
const Events = artifacts.require("Event");
const Constructor = artifacts.require("e");


module.exports= function(deployer){
    deployer.deploy(EtherUnits);
    deployer.deploy(Gas);
    deployer.deploy(IfElse);
    deployer.deploy(Loop);
    deployer.deploy(Mapping);
    deployer.deploy(Array);
    deployer.deploy(Enum);
    deployer.deploy(Structs);
    deployer.deploy(Error);
    deployer.deploy(Events);
    deployer.deploy(Constructor);
};