function testDrag
    f=uifigure;
    testCase=matlab.uitest.TestCase.forInteractiveUse;
    slider=uislider(f);
    changing=false;
    changed=false;
    slider.ValueChangingFcn = @(o,e)cb_changing;
    slider.ValueChangedFcn = @(o,e)cb_changed;
    driver=matlab.ui.internal.Driver;
    driver.drag(slider, 20, 80);
    disp(changing);
    disp(changed);
    testCase.verifyThat(changing, IsTrue);
    testCase.verifyThat(changed, IsTrue);
    function cb_changed
        changed=true;
    end
    function cb_changing
        changing=true;
    end
end

function c = IsTrue(varargin)
c = matlab.unittest.constraints.IsTrue(varargin{:});
end
