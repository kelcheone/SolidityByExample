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
const Inheritance = artifacts.require("F");
const ShaddowingISV = artifacts.require("C");
const CallingParentContracts = artifacts.require("D");
const KELToken = artifacts.require("KelToken");
const Interface = artifacts.require("UniswapExample");
const Mappings2 = artifacts.require("Map2");
const Payable = artifacts.require("Payable");
const RecieveEther = artifacts.require("RecieveEther");
const SendEther = artifacts.require("SendEther");
const Fallback = artifacts.require("Fallback");
const Fallback = artifacts.require("SendToFallback");



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
    deployer.deploy(Inheritance);
    deployer.deploy(ShaddowingISV);
    deployer.deploy(CallingParentContracts);
    deployer.deploy(Interface);
    deployer.deploy(Mappings2);
    deployer.deploy(KELToken);
    deployer.deploy(Payable);
    deployer.deploy(RecieveEther);
    deployer.deploy(SendEther);
    deployer.deploy(Fallback);
    
};