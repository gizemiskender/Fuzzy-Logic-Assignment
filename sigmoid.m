function [SIGMOR, SIGMOL] = sigmoid(sag, sol,csag, csol, x)

    SIGMOR=(1./(1+exp(-sag*(x-csag))));
    SIGMOL=(1./(1+exp(-sol*(x-csol))));
    plot(x,SIGMOR,x,SIGMOL);
end