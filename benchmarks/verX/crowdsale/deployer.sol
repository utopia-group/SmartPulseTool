        uint cap = 5000000;
        uint goal = 3000000;
        address payable wallet = address(0x5555555555555555555555555555555555555555);
        SampleCrowdsaleToken token = new SampleCrowdsaleToken();
        SampleCrowdsale crowdsale = new SampleCrowdsale(123123, 123123 + 1 weeks, 1, wallet, cap, token, goal);
        token.addMinter(address(crowdsale));
