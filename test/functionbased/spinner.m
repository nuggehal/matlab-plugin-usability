function spinner
    fig=uifigure;
    s=uispinner(fig);
    s.Value=10;
    testCase=matlab.uitest.TestCase.forInteractiveUse;
    dd=uidropdown(fig);
    dd.Item={'Red','Green','Blue'};
    testCase.choose(dd,'Blue');
    testCase.type(s,0.015);
end