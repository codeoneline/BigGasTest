const Hydro = artifacts.require('Ballot');

module.exports = async (deployer, network) => {
    const deployHydroMainContract = async () => {
        await deployer.deploy(Hydro);
    };
    await deployHydroMainContract();
};
