// The amount of raised funds can never exceed the hardcap
// of the crowdsale
    property spec1 { 
        always((SampleCrowdsale._weiRaised <= SampleCrowdsale._cap));
    }
